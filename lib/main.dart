import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/home/main_page.dart';
import 'package:flutter_ecommerce/pages/sign_in_page.dart';
import 'package:flutter_ecommerce/pages/sign_up_page.dart';
import 'package:flutter_ecommerce/pages/splash_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}