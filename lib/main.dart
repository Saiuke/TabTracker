import 'package:flutter/material.dart';
import 'package:tab_tracker/pages/customers_page.dart';
import 'package:tab_tracker/pages/dashboard_page.dart';
import 'package:tab_tracker/pages/transactions_page.dart';
import 'package:tab_tracker/widgets/navigation_bar.dart';

import 'models/nav_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<NavItem> navItems = <NavItem>[
      NavItem(
        appPage: const DashboardPage(),
        menuDestination: const NavigationDestination(
          selectedIcon: Icon(Icons.dashboard),
          icon: Icon(Icons.dashboard_outlined),
          label: 'Dashboard',
        ),
      ),
      NavItem(
        appPage: const TransactionsPage(),
        menuDestination: const NavigationDestination(
          selectedIcon: Icon(Icons.money),
          icon: Icon(Icons.money_outlined),
          label: 'Transactions',
        ),
      ),
      NavItem(
        appPage: const CustomersPage(),
        menuDestination: const NavigationDestination(
          selectedIcon: Icon(Icons.people),
          icon: Icon(Icons.people_outlined),
          label: 'Customers',
        ),
      ),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainBottomNavBar(navItems: navItems),
    );
  }
}