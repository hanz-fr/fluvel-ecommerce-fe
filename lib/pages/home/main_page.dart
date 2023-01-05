import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/home_icon.png',
                  width: 21,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/chat_icon.png',
                  width: 21,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/wishlist_icon.png',
                  width: 21,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/profile_icon.png',
                  width: 18,
                ),
              ),
            ],
          ),
        ),
      );

    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: const Center(
        child: Text('Main Page'),
      ),
    );
  }
}
