import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/ui/blocs/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
    fetchContact();
  }

  Future<void> fetchContact() async {
    FirebaseFirestore.instance
        .collection("user")
        .where('id', isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen(
      (event) {
        List<UserDto> users = [];
        for (var element in event.docs) {
          users.add(UserDto.fromJson(element.data()));
        }
        emit(HomeStateData(users));
      },
    );
  }
}
