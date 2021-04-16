import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/mobile/search/search_screen.dart';
import 'package:swiggy_ui/views/mobile/takeout/takeout_screen.dart';

import '../../utils/app_colors.dart';
import 'cart/cart_screen.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  @override
  _HomeBottomNavigationScreenState createState() => _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState extends State<HomeBottomNavigationScreen> {

  final List<Widget> _children = [
    TakeOutScreen(),
    SearchScreen(),
    CartScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 8.0);
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkOrange,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'TAKEOUT',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'CART',
            ),
          ],
        ),
      ),
    );
  }
}
