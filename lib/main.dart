import 'package:flutter/material.dart';
import 'package:portofolio/pages/dekstop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(45, 52, 128, 1)),
      debugShowCheckedModeBanner: false,
      home: const DesktopHome(),
    );
  }
}