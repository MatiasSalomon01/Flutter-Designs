import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (context) => const BasicDesignScreen(),
        'scroll_design': (context) => const ScrollDesignScreen(),
        'home_screen': (context) => const HomeScreen()
      },
    );
  }
}
