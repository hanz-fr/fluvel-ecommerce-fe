import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/providers/auth_provider.dart';
import 'package:flutter_ecommerce/providers/product_provider.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';
import 'package:flutter_ecommerce/widgets/product_tile.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    
  AuthProvider authProvider = Provider.of<AuthProvider>(context);
  UserModel user = authProvider.user;
  ProductProvider productProvider = Provider.of<ProductProvider>(context);

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
                  'Halo, ${user.name}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@${user.username}',
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
                image: NetworkImage(
                  user.profilePhotoUrl.toString(),
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
              children: productProvider.products.map((product) => ProductCard(product)).toList(),
            )
          ],
        ),
      ),
    );
  }

  /* New Arrivals Title */
  Widget newArrivalsTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  /* New Arrivals Card */
  Widget newArrivals() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Column(
        children: productProvider.products.map((product) => ProductTile(product)).toList(),
      ),
    );
  }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}