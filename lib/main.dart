import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'consts/consts.dart';
import 'views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: regular,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              foregroundColor: whiteColor)),
      home: const SplashScreen(),
    );
  }
}
