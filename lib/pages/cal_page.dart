// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CalPage extends StatefulWidget {
  const CalPage({super.key});

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  var cash = 3000;
  var day = 9;
  var interest = 16;
  var year = 365;
  var total1 = 0.0;
  var cash2 = 7000;
  var total3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text('จำนวนที่จ่าย $cash'),
                Text('ดอกเบี้ย $interest %'),
                Text(
                    'สรุป ${(total1 = (cash * (interest / 100) * day) / year)}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
