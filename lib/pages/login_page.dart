import 'package:app_analytics/components/base_screen.dart';
import 'package:app_analytics/components/custom_button.dart';
import 'package:app_analytics/components/custom_input.dart';
import 'package:app_analytics/controllers/data_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _controller = DataController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      onTapBack: () {
        _controller.clearAllInputs();
        Navigator.pop(context);
      },
      titlePage: 'Login',
      child: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 6,
            ),
            CustomInput(
              controller: _controller.userController,
              hintText: 'Usuário',
              icon: Icons.person,
            ),
            CustomInput(
              controller: _controller.passwordController,
              hintText: 'Senha',
              icon: Icons.lock,
            ),
            const Spacer(
              flex: 1,
            ),
            CustomButton(
              title: 'Entrar',
              onTap: () async {
                await _controller.logUser();
              },
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
