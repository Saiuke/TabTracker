import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class DashboardPage extends StatefulWidget {
  final ValueNotifier<int> currentPageIndex;

  const DashboardPage({super.key, required this.currentPageIndex});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Dashboard Page'),
      ),
      bottomNavigationBar:
          MainBottomNavBar(currentPageIndex: widget.currentPageIndex),
    );
  }
}
