import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class TransactionsPage extends StatefulWidget {
  final ValueNotifier<int> currentPageIndex;
  const TransactionsPage({super.key, required this.currentPageIndex});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Transactions Page'),
      ),
      bottomNavigationBar: MainBottomNavBar(currentPageIndex: widget.currentPageIndex),
    );
  }
}
