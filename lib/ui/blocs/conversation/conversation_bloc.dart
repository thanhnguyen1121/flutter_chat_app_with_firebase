import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/message_dto.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/ui/blocs/conversation/conversation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationBloc extends Cubit<ConversationState> {
  late final UserDto _partnerInfo;

  ConversationBloc() : super(const ConversationState.loading());

  void init(UserDto partnerInfo) {
    _partnerInfo = partnerInfo;
    FirebaseFirestore.instance
        .collection("conversation")
        .doc(genThreadId(partnerInfo))
        .collection("message")
        .orderBy('time')
        .snapshots()
        .listen((event) {
      List<MessageDto> messages = [];
      for (var element in event.docs) {
        messages.add(MessageDto.fromJson(element.data()));
      }
      emit(ConversationState(messages));
    });
  }

  void sendMessage(String message) {
    FirebaseFirestore.instance
        .collection("conversation")
        .doc(genThreadId(_partnerInfo))
        .collection("message")
        .add(MessageDto(
                message: message,
                userId: FirebaseAuth.instance.currentUser!.uid,
                time: DateTime.now().toString())
            .toJson())
        .then((value) {})
        .onError((error, stackTrace) {
      debugPrint("value: error: $error");
    });
  }

  String genThreadId(UserDto partnerInfo) {
    if (FirebaseAuth.instance.currentUser!.uid.compareTo(partnerInfo.id) > 0) {
      return '${FirebaseAuth.instance.currentUser!.uid}_${partnerInfo.id}';
    } else {
      return '${partnerInfo.id}_${FirebaseAuth.instance.currentUser!.uid}';
    }
  }
}
