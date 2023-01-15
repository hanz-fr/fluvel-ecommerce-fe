import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/checkout_page.dart';
import 'package:flutter_ecommerce/pages/checkout_success_page.dart';
import 'package:flutter_ecommerce/pages/detail_chat_page.dart';
import 'package:flutter_ecommerce/pages/home/main_page.dart';
import 'package:flutter_ecommerce/pages/sign_in_page.dart';
import 'package:flutter_ecommerce/pages/sign_up_page.dart';
import 'package:flutter_ecommerce/pages/splash_page.dart';
import 'package:flutter_ecommerce/providers/auth_provider.dart';
import 'package:flutter_ecommerce/providers/product_provider.dart';
import 'package:provider/provider.dart';

import 'pages/cart_page.dart';
import 'pages/edit_profile_page.dart';
import 'pages/product_page.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => const MainPage(),
          '/detail-chat': (context) => const DetailChatPage(), 
          '/edit-profile': (context) => const EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => const CartPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/checkout-success':(context) => const CheckoutSuccessPage(),
        },
      ),
    );
  }
}