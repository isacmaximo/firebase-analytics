import 'package:app_analytics/components/base_screen.dart';
import 'package:app_analytics/shared/icon_message_widget.dart';
import 'package:app_analytics/components/navigator_button.dart';
import 'package:app_analytics/controllers/home_navigation_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final HomeNavigationController _navigation = HomeNavigationController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      disableLeading: true,
      titlePage: 'Analytics',
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            NavigatorButton(
              icon: Icons.person,
              title: 'Login',
              onTap: () {
                _navigation.goToLoginPage(context);
              },
            ),
            const Spacer(
              flex: 1,
            ),
            NavigatorButton(
              icon: Icons.shopping_bag,
              title: 'Compra',
              onTap: () {
                _navigation.goToPurchasePage(context);
              },
            ),
            const Spacer(
              flex: 1,
            ),
            NavigatorButton(
              icon: Icons.category,
              title: 'Escolha',
              onTap: () {
                _navigation.goToChoicePage(context);
              },
            ),
            const Spacer(
              flex: 2,
            ),
            const IconMessageWidget(
              icon: Icons.query_stats,
              message: 'Escolha um ítem acima'
                  ' e monitore com DebugView',
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
