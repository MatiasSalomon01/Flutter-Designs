import 'package:flutter/material.dart';
import 'package:flutter_designs/screens/screens.dart';
import 'package:flutter_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design': (context) => const BasicDesignScreen(),
        'scroll_design': (context) => const ScrollDesignScreen(),
      },
    );
  }
}
