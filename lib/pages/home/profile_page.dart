import 'package:flutter/material.dart';

import '../../theme.dart';


// ignore: use_key_in_widget_constructors
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/profile_image.png',
                    width: 64,
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@alexkeinn',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}