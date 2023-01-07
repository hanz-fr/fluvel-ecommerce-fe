import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/chat_tile.dart';

import '../../theme.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  /* Header */
  Widget header() {
    return AppBar(
       backgroundColor: bgColor1,
       centerTitle: true,
       elevation: 0,
       automaticallyImplyLeading: false,
       title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
       ),
    );
  }


  /* Content Empty Chat */
  Widget emptyChat() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/headset_icon.png',
              width: 80,
            ), 
            const SizedBox(height: 20,),
            Text(
              'Oops, no message yet?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12,),
            Text(
              'You have never done a transaction.',
              style: secondaryTextStyle,
            ),
            const SizedBox(height: 20,),
            // ignore: sized_box_for_whitespace
            Container(
              height: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  /* Content */
  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: const [
            ChatTile()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}