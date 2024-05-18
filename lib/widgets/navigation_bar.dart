import 'package:flutter/material.dart';
import '../models/nav_item.dart';

class MainBottomNavBar extends StatefulWidget {
  final ValueNotifier<int> currentPageIndex;

  const MainBottomNavBar({super.key, required this.currentPageIndex});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  final List<NavItem> navItems = <NavItem>[
    NavItem(
      appRoute: '/',
      menuDestination: const NavigationDestination(
        selectedIcon: Icon(Icons.dashboard),
        icon: Icon(Icons.dashboard_outlined),
        label: 'Dashboard',
      ),
    ),
    NavItem(
      appRoute: '/transactions',
      menuDestination: const NavigationDestination(
        selectedIcon: Icon(Icons.money),
        icon: Icon(Icons.money_outlined),
        label: 'Transactions',
      ),
    ),
    NavItem(
      appRoute: '/customers',
      menuDestination: const NavigationDestination(
        selectedIcon: Icon(Icons.people),
        icon: Icon(Icons.people_outlined),
        label: 'Customers',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: widget.currentPageIndex,
      builder: (context, value, child) {
        return NavigationBar(
          onDestinationSelected: (int index) {
            widget.currentPageIndex.value = index;
            Navigator.pushReplacementNamed(context, navItems[index].appRoute);
          },
          indicatorColor: Colors.amber,
          selectedIndex: value,
          destinations: navItems.map((el) => el.menuDestination).toList(),
        );
      },
    );
  }
}