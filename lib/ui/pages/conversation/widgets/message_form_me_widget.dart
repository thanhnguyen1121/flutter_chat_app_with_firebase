import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/message_dto.dart';
import 'package:flutter_application/lib.dart';

class MessageFormMeWidget extends StatelessWidget {
  final MessageDto messageModel;

  const MessageFormMeWidget({Key? key, required this.messageModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 100, right: 20),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xffD0ECE8),
              borderRadius:
                  const BorderRadius.all(Radius.circular(12)).copyWith(
                bottomRight: const Radius.circular(0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    messageModel.message,
                    textAlign: TextAlign.end,
                    style: context.textTheme.bodyText1?.copyWith(
                      color: const Color(0xff007665),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
