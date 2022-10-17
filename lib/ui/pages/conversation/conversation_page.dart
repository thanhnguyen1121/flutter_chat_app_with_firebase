import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/conversation/conversation_bloc.dart';
import 'package:flutter_application/ui/blocs/conversation/conversation_state.dart';
import 'package:flutter_application/ui/widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_loading_widget.dart';
import 'package:flutter_application/ui/widgets/design_system/my_textfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/message_widget.dart';

class ConversationPage extends StatefulWidget {
  final UserDto user;

  static const routeName = 'ConversationPage';

  const ConversationPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  static const tag = 'ConversationPage';
  final _inputCtl = TextEditingController();
  final _bloc = ConversationBloc();
  final _scrollCtrl = ScrollController();

  @override
  void initState() {
    super.initState();
    _bloc.init(widget.user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 0,
        leading: InkResponse(
          onTap: () {
            Navigator.pop(context);
          },
          radius: 20,
          child: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                widget.user.avatarUrl,
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                widget.user.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: context.textTheme.bodyText1?.copyWith(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<ConversationBloc, ConversationState>(
          listener: (context, state) {
            Future.delayed(const Duration(milliseconds: 300)).then((value) {
              _scrollCtrl.animateTo(
                _scrollCtrl.position.maxScrollExtent,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300),
              );
            });
          },
          builder: (context, state) {
            return state.when(
              (messages) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        controller: _scrollCtrl,
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return MessageWidget(
                            messageModel: messages[index],
                            partnerAvatar: widget.user.avatarUrl,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 12,
                          );
                        },
                      ),
                    ),
                    SafeArea(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: MyTextField(
                                hintText: "Enter some things",
                                controller: _inputCtl,
                              ),
                            ),
                          ),
                          InkResponse(
                              radius: 24,
                              onTap: () {
                                if (_inputCtl.text.isNotEmpty) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  context
                                      .read<ConversationBloc>()
                                      .sendMessage(_inputCtl.text);
                                  _inputCtl.text = "";
                                }
                              },
                              child: Transform.rotate(
                                angle: -math.pi / 4,
                                child: const Icon(
                                  Icons.send,
                                  color: Color(0xff007665),
                                ),
                              )),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              loading: () => const AppLoadingWidget(),
              error: (error) {
                return AppErrorWidget(messages: error);
              },
            );
          },
        ),
      ),
    );
  }
}
