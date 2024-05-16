import 'package:flutter/material.dart';

import '../models/nav_item.dart';

class MainBottomNavBar extends StatefulWidget {
  final List<NavItem> navItems;

  const MainBottomNavBar({Key? key, required this.navItems}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          },
          indicatorColor: Colors.amber,
          selectedIndex: currentPageIndex,
          destinations:
              widget.navItems.map((el) => el.menuDestination).toList(),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          children: widget.navItems.map((el) => el.appPage).toList(),
        ));
  }
}
