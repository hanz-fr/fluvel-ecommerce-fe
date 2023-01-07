import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

// ignore: use_key_in_widget_constructors
class WishlistCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
            ),
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$142,23',
                  style: priceTextStyle
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_active.png',
            width: 34,
          )
        ],
      ),
    );
  }
}