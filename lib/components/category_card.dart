import 'package:app_analytics/components/custom_text.dart';
import 'package:app_analytics/shared/constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final IconData icon;
  final void Function()? onTap;
  const CategoryCard({
    super.key,
    required this.category,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.4,
        decoration: BoxDecoration(
          color: yellowApp,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
              CustomText(
                text: category,
                fontSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
