import 'package:flutter/material.dart';
import 'package:flutter_creditcard_interest_cal/pages/cal_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/home_page.dart';

import 'package:flutter_creditcard_interest_cal/pages/main_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/search_page.dart';
import 'package:flutter_creditcard_interest_cal/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      title: 'Credit card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
