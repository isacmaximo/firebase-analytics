import 'package:app_analytics/components/custom_text.dart';
import 'package:app_analytics/shared/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final double? width;
  final EdgeInsetsGeometry? margin;
  const CustomButton({
    super.key,
    this.onTap,
    required this.title,
    this.width,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width ?? size.width * 0.8,
        margin: margin ??
            EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: yellowApp,
        ),
        child: Center(
          child: CustomText(
            text: title,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
