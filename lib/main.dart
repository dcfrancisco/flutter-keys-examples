import 'package:flutter/material.dart';
import 'package:flutter_keys_examples/my_home_page.dart';

import 'pages/favorites_page.dart';
import 'pages/home_page.dart';
import 'pages/search_page.dart';
import 'pages/settings_page.dart';
import 'widgets/padded_bottom_navigation_bar_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
