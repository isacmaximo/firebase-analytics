import 'package:app_analytics/components/custom_text.dart';
import 'package:flutter/material.dart';

class IconMessageWidget extends StatelessWidget {
  final String message;
  final IconData icon;
  const IconMessageWidget(
      {super.key, required this.message, required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 100,
            ),
            CustomText(
              text: message,
              fontSize: 24,
              color: Colors.grey,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
