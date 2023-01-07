import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';


class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    /* Header */
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () { Navigator.pop(context); },
                  child: const Icon(Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: bgColor1,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}