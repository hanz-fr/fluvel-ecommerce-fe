import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';



// ignore: use_key_in_widget_constructors
class SplashPage extends StatefulWidget {
  
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_splash.png'),
            )
          ),
        ),
      ),
    );
  }
}