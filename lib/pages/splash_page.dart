import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/providers/product_provider.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:provider/provider.dart';



// ignore: use_key_in_widget_constructors
class SplashPage extends StatefulWidget {
  
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    
    getInit();

    super.initState();
  }

  getInit() async {

    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');

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