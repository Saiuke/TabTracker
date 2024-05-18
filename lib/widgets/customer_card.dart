import 'package:flutter/material.dart';
import '../models/customer_model.dart';

class CustomerCard extends StatelessWidget {
  final Customer customerInfo;

  const CustomerCard({super.key, required this.customerInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.lime.shade400,
        child: ListTile(
          leading: const Icon(Icons.person),
          title: Text(customerInfo.name),
          subtitle: Text('Phone: ${customerInfo.phone}\nEmail: ${customerInfo.email}'),
        ),
      ),
    );
  }
}