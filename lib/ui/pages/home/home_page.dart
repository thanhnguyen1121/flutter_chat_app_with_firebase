import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/blocs/home/home_bloc.dart';
import 'package:flutter_application/ui/blocs/home/home_state.dart';
import 'package:flutter_application/ui/pages/conversation/conversation_page.dart';
import 'package:flutter_application/ui/widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/user_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
    _bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat",
            style: context.textTheme.headline5
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 3,
          actions: [
            InkResponse(
              onTap: () {
                context.read<AuthBloc>().logout();
              },
              radius: 24,
              child: const Icon(
                Icons.logout,
                size: 24,
                color: Color(0xff007665),
              ),
            ),
            const SizedBox(width: 20,)
          ],
        ),
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                (users) {
                  return ListView.builder(
                      itemBuilder: (context, index) {
                        return UserWidget(
                          user: users[index],
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              ConversationPage.routeName,
                              arguments: users[index],
                            );
                          },
                        );
                      },
                      itemCount: users.length);
                },
                loading: () => const AppLoadingWidget(),
                error: (error) => AppErrorWidget(messages: error),
              );
            },
          ),
        ),
      ),
    );
  }
}
