import 'package:flutter/material.dart';
import 'package:magic_mart/Modules/Cart/cart_screen.dart';
import 'package:magic_mart/Modules/Favourite/favourite_screen.dart';
import 'package:magic_mart/Modules/Explore/explore_screen.dart';
import 'package:magic_mart/Modules/Home/home_screen.dart';
import 'package:magic_mart/Modules/Profile/profile_screen.dart';
import 'package:magic_mart/Utils/colors.dart';
import 'package:get/get.dart';

class HomeTabbarScreen extends StatelessWidget {
  @override
  var selectedIndex = 0.obs;

  List<Widget> _pages = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        initialIndex: selectedIndex.value,
        child: Scaffold(
          body: Obx((() => _pages[selectedIndex.value])),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              currentIndex: selectedIndex.value,
              selectedItemColor: COLOR_THEME,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                selectedIndex.value = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_sharp),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
