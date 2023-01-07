import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    /* Header */
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          backgroundColor: bgColor1,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout Success',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18
            ),
          ),
        ),
      );
    }

    /* Content */
    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/emptycart_icon.png',
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we\nprepare your dream shoes.',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(top: defaultMargin),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: const EdgeInsets.only(top: 12),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                child: Text(
                  'View My Order',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                    color: const Color(0xffB7B6BF),
                  ),
                ),
              ) ,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}