import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/providers/counter_provider.dart';
import 'package:flutter_provider_counter/providers/shopping_cart_provider.dart';
import 'package:flutter_provider_counter/screens/home_screen.dart';
import 'package:flutter_provider_counter/screens/second_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => ShoppingCart()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        'second': (context) => const SecondScreen(),
      },
    );
  }
}
