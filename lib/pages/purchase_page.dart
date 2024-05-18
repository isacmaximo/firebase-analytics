import 'package:app_analytics/components/base_screen.dart';
import 'package:app_analytics/components/purchase_card.dart';
import 'package:app_analytics/controllers/data_controller.dart';
import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  final _controller = DataController();
  PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titlePage: 'Compra',
      child: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Column(
              children: List.generate(
                _controller.listItem.length,
                (index) => PurchaseCard(
                  itemName: _controller.listItem[index].itemName!,
                  price: _controller.listItem[index].price!,
                  icon: _controller.listItem[index].icon!,
                  onTap: () async {
                    await _controller.logPurchase(_controller.listItem[index]);
                  },
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
