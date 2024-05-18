import 'package:app_analytics/components/custom_text.dart';
import 'package:app_analytics/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class BaseScreen extends StatelessWidget {
  final String titlePage;
  final Widget child;
  final bool? disableLeading;
  final void Function()? onTapBack;
  const BaseScreen({
    super.key,
    required this.titlePage,
    required this.child,
    this.disableLeading,
    this.onTapBack,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: orangeApp,
          centerTitle: true,
          title: CustomText(
            text: titlePage,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          leading: disableLeading == true
              ? Container()
              : GestureDetector(
                  onTap: onTapBack ??
                      () {
                        Navigator.pop(context);
                      },
                  child: const Icon(Icons.arrow_back)),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: child,
      ),
    );
  }
}
