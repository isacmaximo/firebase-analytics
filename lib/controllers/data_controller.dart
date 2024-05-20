import 'package:app_analytics/models/category_item.dart';
import 'package:app_analytics/models/item.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class DataController {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  void clearAllInputs() {
    userController.clear();
    passwordController.clear();
  }

  setCurrentScreenView(String screenName) async {
    await analytics.logScreenView(
      screenName: screenName,
    );
  }

  logUser() async {
    await analytics.logLogin(
      loginMethod: 'Username',
      parameters: {
        'user':
            userController.text.isEmpty ? 'campo vazio' : userController.text,
      },
    );
  }

  logPurchase(Item item) async {
    await analytics.logPurchase(
      currency: 'BRL',
      value: item.priceValue,
      parameters: {
        'productId': item.id,
        'name': item.itemName,
        'category': item.category,
      },
    );
  }

  logChoice(CategoryItem categoryItem) async {
    await analytics.logEvent(
      name: 'select_category',
      parameters: {
        'choice': categoryItem.category,
      },
    );
  }

  List<Item> listItem = [
    Item(
      id: 1,
      icon: Icons.sports_soccer,
      itemName: 'Bola de Futebol',
      price: 'R\$: 50,00',
      priceValue: 50.0,
      category: 'Esporte',
    ),
    Item(
      id: 2,
      icon: Icons.lunch_dining,
      itemName: 'Cheese Burguer',
      price: 'R\$: 20,00',
      priceValue: 20.0,
      category: 'Comida',
    ),
    Item(
      id: 3,
      icon: Icons.desktop_windows,
      itemName: 'Smart TV "21"',
      price: 'R\$: 1500,00',
      priceValue: 1500.0,
      category: 'Tecnologia',
    ),
  ];

  List<CategoryItem> listCategory = [
    CategoryItem(
      category: 'Pet',
      icon: Icons.pets,
    ),
    CategoryItem(
      category: 'Casa',
      icon: Icons.house,
    ),
    CategoryItem(
      category: 'Livro',
      icon: Icons.book,
    ),
    CategoryItem(
      category: 'Arte',
      icon: Icons.brush,
    ),
  ];
}
