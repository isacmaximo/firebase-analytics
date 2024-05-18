import 'package:app_analytics/components/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class PurchaseCard extends StatelessWidget {
  final void Function()? onTap;
  final String itemName;
  final String price;
  final IconData icon;
  const PurchaseCard({
    super.key,
    this.onTap,
    required this.itemName,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.only(top: size.height * 0.025),
      surfaceTintColor: Colors.white,
      elevation: 10,
      child: SizedBox(
        width: size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Icon(
                  icon,
                  size: size.width * 0.25,
                  color: Colors.white,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: itemName,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  CustomText(
                    text: price,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                  ),
                  CustomButton(
                    title: 'Comprar',
                    width: size.width * 0.4,
                    margin: EdgeInsets.zero,
                    onTap: onTap,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
