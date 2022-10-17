import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/user_dto.dart';
import 'package:flutter_application/ui/pages/conversation/conversation_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../pages.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: HomePage.routeName,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case ConversationPage.routeName:
            return MaterialPageRoute(
              builder: (context) => ConversationPage(
                user: setting.arguments as UserDto,
              ),
            );

          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
