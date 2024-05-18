import 'package:flutter/material.dart';
import '../models/customer_model.dart';
import '../widgets/customer_card.dart';
import '../widgets/navigation_bar.dart';

class CustomersPage extends StatefulWidget {
  final ValueNotifier<int> currentPageIndex;

  const CustomersPage({super.key, required this.currentPageIndex});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  final customerList = [
    Customer(
        name: 'John Doe',
        email: 'john-doe@example.com',
        phone: '123-456-7890'
    ),
    Customer(
        name: 'Jane Doe',
        email: 'jane-doe@example.com',
        phone: '098-765-4321'
    ),
    Customer(
        name: 'Alana Castro',
        email: 'alana-castro@example.com',
        phone: '456-789-0123'),
    Customer(
        name: 'Michael Smith',
        email: 'michael.smith@example.com',
        phone: '321-654-0987'),
    Customer(
        name: 'Emily Johnson',
        email: 'emily.johnson@example.com',
        phone: '654-321-9876'),
    Customer(
        name: 'David Brown',
        email: 'david.brown@example.com',
        phone: '789-012-3456'),
    Customer(
        name: 'Olivia Williams',
        email: 'olivia.williams@example.com',
        phone: '012-345-6789'),
    Customer(
        name: 'James Miller',
        email: 'james.miller@example.com',
        phone: '234-567-8901'),
    Customer(
        name: 'Sophia Martinez',
        email: 'sophia.martinez@example.com',
        phone: '567-890-1234'),
    Customer(
        name: 'Isabella Anderson',
        email: 'isabella.anderson@example.com',
        phone: '890-123-4567'),
    Customer(
        name: 'Ethan Thomas',
        email: 'ethan.thomas@example.com',
        phone: '123-098-7654'),
    Customer(
        name: 'Charlotte Taylor',
        email: 'charlotte.taylor@example.com',
        phone: '345-678-9012'),
    Customer(
        name: 'Alexander Harris',
        email: 'alexander.harris@example.com',
        phone: '678-901-2345')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: customerList.length,
          itemBuilder: (context, index) {
            final currentCustomer = customerList[index];
            return CustomerCard(customerInfo: currentCustomer);
          },
        ),
      ),
      bottomNavigationBar:
          MainBottomNavBar(currentPageIndex: widget.currentPageIndex),
    );
  }
}
