import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /* Header */
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Image.asset(
                'assets/shop_logo_online.png',
                width: 50,
              ),
              const SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
    );
  }
}
