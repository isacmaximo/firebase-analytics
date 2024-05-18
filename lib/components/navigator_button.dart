import 'package:app_analytics/components/custom_text.dart';
import 'package:app_analytics/shared/constants.dart';
import 'package:flutter/material.dart';

class NavigatorButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String title;
  const NavigatorButton({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: yellowApp,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    color: orangeApp,
                    size: 24,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              CustomText(
                text: title,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              const Spacer(
                flex: 1,
              ),
              const Icon(
                Icons.arrow_right,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
