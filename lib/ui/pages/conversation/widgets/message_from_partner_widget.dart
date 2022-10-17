import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/message_dto.dart';
import 'package:flutter_application/lib.dart';

class MessageFromPartnerWidget extends StatelessWidget {
  final MessageDto messageModel;
  final String avatar;

  const MessageFromPartnerWidget({
    Key? key,
    required this.messageModel,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: 16,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              avatar,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            )),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 100, left: 12),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xffE4E4E4),
              borderRadius:
                  const BorderRadius.all(Radius.circular(12)).copyWith(
                bottomLeft: const Radius.circular(0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    messageModel.message,
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyText1?.copyWith(
                      color: const Color(0xff383737),
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
