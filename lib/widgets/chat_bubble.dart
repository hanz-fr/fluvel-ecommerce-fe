import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class ChatBubble extends StatelessWidget {

  final String text;
  final bool isSender;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  ChatBubble({this.isSender = false, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12 : 0),
                  topRight: Radius.circular(isSender ? 0 : 12),
                  bottomLeft: const Radius.circular(12),
                  bottomRight: const Radius.circular(12),
                ),
                color: isSender ? bgColor5 : bgColor4,
              ),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}