import 'package:flutter/material.dart';
import 'explore_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected page index
  int currentPageIndex = 0;

  // method to upgrade the current page index
  void navigateBottomBar(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  // navigation destinations
  final List<NavigationDestination> navigationDestinations = [
    const NavigationDestination(icon: Icon(Icons.explore), label: '发现'),
    const NavigationDestination(icon: Icon(Icons.person), label: '个人'),
  ];

  // pages to diaplay
  final List<Widget> pages = [
    // explore hitokoto page
    const ExplorePage(),

    // user profile page
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // always hide navigation label
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,

        // current selected index
        selectedIndex: currentPageIndex,

        // method to call when a destination is selected
        onDestinationSelected: navigateBottomBar,

        // list of navigation destinations
        destinations: navigationDestinations,
      ),

      // display the current page based on the selected index
      body: pages[currentPageIndex],
    );
  }
}
