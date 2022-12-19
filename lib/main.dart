import 'package:flutter/material.dart';
import 'package:selectable_day_predicate_example/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selectable Day Predicate Example',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
