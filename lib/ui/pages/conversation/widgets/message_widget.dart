import 'dart:developer' as developer;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/message_dto.dart';

import 'message_form_me_widget.dart';
import 'message_from_partner_widget.dart';

class MessageWidget extends StatelessWidget {
  final MessageDto messageModel;
  final String partnerAvatar;
  final String userId = FirebaseAuth.instance.currentUser!.uid;

  MessageWidget({
    Key? key,
    required this.messageModel,
    required this.partnerAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (messageModel.userId == userId) {
      return MessageFormMeWidget(messageModel: messageModel);
    }
    return MessageFromPartnerWidget(
        messageModel: messageModel, avatar: partnerAvatar);
  }
}
