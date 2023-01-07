import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/wishlist_card.dart';

import '../../theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /* Header */
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Favorite Shoes',
        ),
      );
    }

    /* Empty Wishlist */
    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              const SizedBox(height: 23),
              Text(
                'You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle,
              ),
              const SizedBox(height: 20),
              // ignore: sized_box_for_whitespace
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    /* Wishlist Content */
    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
