import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/pages/home/home_page.dart';

import 'chat_page.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {


    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/cart_icon.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: Image.asset(
                    'assets/home_icon.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : const Color(0xff808191),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: Image.asset(
                    'assets/chat_icon.png',
                    width: 21,
                    color: currentIndex == 1 ? primaryColor : const Color(0xff808191),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: Image.asset(
                    'assets/wishlist_icon.png',
                    width: 21,
                    color: currentIndex == 2 ? primaryColor : const Color(0xff808191),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10
                  ),
                  child: Image.asset(
                    'assets/profile_icon.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : const Color(0xff808191),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }


    Widget body() {

      switch (currentIndex) {
        case 0:
          return const HomePage();

        case 1:
          return const ChatPage();

        case 2:
          return const WishlistPage();

        case 3:
          return ProfilePage();

        default: return HomePage();
      }
    }


    return Scaffold(
      backgroundColor: currentIndex == 0 ? bgColor1 : bgColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body()
    );
  }
}
