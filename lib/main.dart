// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_yt/HomePage.dart';
import 'package:flutter_application_yt/Widgets/ItemPage.dart';
import 'package:flutter_application_yt/Widgets/welcome_page.dart';
import 'package:flutter_application_yt/login_page.dart';
import 'Widgets/cartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      initialRoute: "/welcome",
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => ItemPage(),
        "/welcome": (context) => WelcomePage(),
        "/signinPage": (context) => SignUpPage(),
      },
    );
  }
}
