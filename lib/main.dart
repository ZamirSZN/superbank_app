import 'package:flutter/material.dart';
import 'package:superbank_app/screens/homeScreen.dart';

void main() {
  runApp(const SuperBankApp());
}

class SuperBankApp extends StatelessWidget {
  const SuperBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SuperBank",
      theme: ThemeData(fontFamily: 'Chirp'),
      home: const homeScreen(),
    );
  }
}
