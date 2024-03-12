import 'package:flutter/material.dart';
import 'package:flutter_news/pages/favorites.dart';

import 'package:flutter_news/pages/home.dart';
import 'package:flutter_news/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Home(),
      routes: {
        '/home': (context) => Home(),
        '/favorites': (context) => Fav(),
        '/settings': (context) => Settings()
      },
    );
  }
}
