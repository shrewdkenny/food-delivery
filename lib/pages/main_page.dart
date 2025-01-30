import 'package:flutter/material.dart';
import 'package:gino_food/models/drawer_item.dart';
import 'package:gino_food/pages/bottom_navigation/cart_page.dart';
import 'package:gino_food/pages/bottom_navigation/category_page.dart';
import 'package:gino_food/pages/bottom_navigation/favorite_page.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:gino_food/pages/bottom_navigation/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CategoryPage(),
    const FavoritePage(),
    const CartPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer for slide menu
      drawer: Drawer(
        elevation: 100.0,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: MyColors.splashBackground,
              ),
            ),
            ...items.map(
              (item) => ListTile(
                leading: Icon(item.icon, color: MyColors.menuColor),
                title: Text(
                  item.title,
                  style: TextStyle(fontWeight: MySize.normalFontWeight),
                ),
                onTap: () => item.onTap(context),
              ),
            ),
          ],
        ),
      ),

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.screenHeight * 0.05),
        child: AppBar(
          surfaceTintColor: MyColors.primaryColor,
          toolbarHeight: MySize.screenHeight * 0.05,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: MyColors.menuColor,
              ),
              onPressed: () {
                // Open the drawer when the menu button is tapped
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          centerTitle: true,
          title: Image.asset(
            MyImages.homelogo,
            height: MySize.screenHeight * 0.04,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: MyColors.menuColor,
              ),
              onPressed: () {
                // You can add search functionality here
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(MyImages.profile),
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex], // Show the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor:
            MyColors.secondary, // Icon and label color for selected item
        unselectedItemColor: MyColors
            .unselectedColor, // Icon and label color for unselected item
        showSelectedLabels: true, // Show labels for selected item
        showUnselectedLabels: true, // Show labels for unselected items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
