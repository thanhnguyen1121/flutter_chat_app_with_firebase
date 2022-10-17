import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String messages;

  const AppErrorWidget({
    Key? key,
    required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        messages,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
