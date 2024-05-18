import 'package:flutter/material.dart';
import 'package:tab_tracker/pages/customers_page.dart';
import 'package:tab_tracker/pages/dashboard_page.dart';
import 'package:tab_tracker/pages/transactions_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ValueNotifier<int> currentPageIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget Function(BuildContext)> appRoutes = {
      '/': (context) => DashboardPage(currentPageIndex: currentPageIndex),
      '/transactions': (context) => TransactionsPage(currentPageIndex: currentPageIndex),
      '/customers': (context) => CustomersPage(currentPageIndex: currentPageIndex),
    };

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        final WidgetBuilder? builder = appRoutes[settings.name];
        if (builder != null) {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => builder(context),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            settings: settings,
          );
        }
        throw Exception('Invalid route: ${settings.name}');
      },
    );
  }
}