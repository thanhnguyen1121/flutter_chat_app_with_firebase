import 'package:auth_nav/auth_nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oauth2_dio/oauth2_dio.dart';

import 'auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  final AuthNavigationBloc authNavigationBloc = GetIt.instance.get();

  final AuthRepository _authRepository = GetIt.instance.get();

  AuthBloc() : super(const AuthState.unAuthorized()) {
    GetIt.instance
        .get<Oauth2Manager<AuthenticationDto>>()
        .controller
        .stream
        .listen((event) {
      if (event != null) {
        authNavigationBloc.emit(AuthNavigationState.authorized());
      } else {
        authNavigationBloc.emit(AuthNavigationState.unAuthorized());
      }
    });
  }

  //Call on splash screen
  Future initializeApp() async {
    final profile = await _authRepository.profile();
    emit(AuthState.authorized(profile));
  }

  Future login(String username, String password) async {
    final auth = await _authRepository.login(username, password);
    GetIt.instance.get<Oauth2Manager<AuthenticationDto>>().add(auth);
    await _authRepository.profile();
  }

  Future logout() async {
    await signOut();
    await _authRepository.logout();
    GetIt.instance.get<LocalService>().clear();
    GetIt.instance.get<Oauth2Manager<AuthenticationDto>>().add(null);
  }

  Future<void> googleLogin() async {
    try {
      final account = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await account!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final user = await FirebaseAuth.instance.signInWithCredential(credential);
      GetIt.instance.get<LocalService>().saveAuth(AuthenticationDto(
          user.user?.displayName ?? "", user.user?.displayName ?? ""));
      await checkAccountAndCreateDocument();
      authNavigationBloc.emit(AuthNavigationState.authorized());
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  Future signOut() async {
    try {
      final account = await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      authNavigationBloc.emit(AuthNavigationState.unAuthorized());
    } catch (exception) {
      debugPrint(exception.toString());
    }
  }

  Future checkAccountAndCreateDocument() async {
    final userSnapshot = await FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    if (!userSnapshot.exists) {
      FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'name': FirebaseAuth.instance.currentUser!.displayName,
        'avatar': FirebaseAuth.instance.currentUser!.photoURL,
        'id': FirebaseAuth.instance.currentUser!.uid
      }).onError((error, stackTrace) {
        debugPrint("value: error: $error");
      });
    } else {
      debugPrint("user exists --> don't create new user");
    }
  }
}
