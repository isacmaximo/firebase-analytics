import 'package:app_analytics/firebase_options.dart';
import 'package:app_analytics/pages/splash_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'dart:io' show Platform;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //LOG PARA MOSTAR QUE O APP FOI ABERTO
  await FirebaseAnalytics.instance.logAppOpen(
    callOptions: AnalyticsCallOptions(global: true),
    parameters: {
      'platform': Platform.isAndroid ? 'Android' : 'IOS',
    },
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      child: MaterialApp(
        navigatorObservers: [observer],
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      ),
    );
  }
}
