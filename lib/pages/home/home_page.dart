import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  /* Header */
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo, Alex',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@alexander',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/profile_image.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /* Categories */
  Widget categories() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(
                  color: subtitleColor
                ),
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(
                  color: subtitleColor
                ),
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(
                  color: subtitleColor
                ),
              ),
              child: Text(
                'Basketball',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(
                  color: subtitleColor
                ),
              ),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /* Popular Products Title */
  Widget popularProductsTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  /* Popular Products Card */
  Widget popularProducts() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts()
      ],
    );
  }
}