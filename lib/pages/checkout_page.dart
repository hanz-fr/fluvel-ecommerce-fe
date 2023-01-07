import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/widgets/checkout_card.dart';


class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);
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
          title: const Text(
            'Checkout Details'
          ),
        ),
      );
    }

    /* Content */
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE : LIST ITEMS
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          )
          
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}