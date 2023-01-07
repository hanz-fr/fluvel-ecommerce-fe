import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    /* Header */
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: true,
          title: Text(
            'Your Cart',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          elevation: 0,
        ),
      );
    }

    /* Empty Cart */
    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/emptycart_icon.png',
              width: 80,
            ),
            const SizedBox(height: 20,),
            Text(
              'Opss! Your cart is empty.',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12,),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            Container(
              width: 152,
              height: 44,
              margin: const EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(
                    context, 
                    '/home', 
                    (route) => false,
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: emptyCart(),
    );
  }
}