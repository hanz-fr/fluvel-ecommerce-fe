import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/widgets/chat_bubble.dart';

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

    /* Product Preview */
    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor5,
          border: Border.all(
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 54,
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Court Vision 2.0',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/button_close.png',
              width: 22,
            ),
          ],
        ),
      );
    }

    /* Chat Input */
    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: bgColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Image.asset(
                  'assets/button_send.png',
                  width: 45,
                ),
              ],
            ),
          ],
        ),
      );
    }

    /* Content */
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, is this item is still available?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text: 'Goodnight, this item is only available in size 42 and 43',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
