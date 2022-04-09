import 'package:flutter/material.dart';
import 'package:master_go/core/init/theme/app_theme.dart';
import 'package:master_go/screens/splash_screen/view/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.theme,
      home: const SplashScreenView(),
    );
  }
}
