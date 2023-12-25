import 'package:flutter/material.dart';
import 'package:samina/screens/home_page.dart';
import 'package:samina/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyAppRoutes {
  static const String loginPage = '/LoginPage';
  static const String homePage = '/HomePage';
  static const String conseil = '/NotFoundPage';
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyAppRoutes.loginPage,
      routes: {
        MyAppRoutes.loginPage: (context) => LoginPage(),
        MyAppRoutes.homePage: (context) => HomePage(),
        // Ajoutez d'autres routes au besoin
      },
    );
  }
}
