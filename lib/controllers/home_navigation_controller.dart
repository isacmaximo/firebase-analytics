import 'package:app_analytics/controllers/data_controller.dart';
import 'package:app_analytics/pages/choice_page.dart';
import 'package:app_analytics/pages/login_page.dart';
import 'package:app_analytics/pages/purchase_page.dart';
import 'package:flutter/material.dart';

class HomeNavigationController {
  final _controller = DataController();

  void goToLoginPage(BuildContext context) {
    //PARA SABER A TELA ATUAL
    _controller.setCurrentScreenView('Login');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  void goToPurchasePage(BuildContext context) {
    _controller.setCurrentScreenView('Compra');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PurchasePage(),
      ),
    );
  }

  void goToChoicePage(BuildContext context) {
    _controller.setCurrentScreenView('Escolha');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChoicePage(),
      ),
    );
  }
}
