import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class CustomersPage extends StatefulWidget {
  final ValueNotifier<int> currentPageIndex;

  const CustomersPage({super.key, required this.currentPageIndex});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Customers Page'),
      ),
      bottomNavigationBar:
          MainBottomNavBar(currentPageIndex: widget.currentPageIndex),
    );
  }
}
