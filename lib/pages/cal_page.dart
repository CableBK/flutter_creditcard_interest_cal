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
  final cashController = TextEditingController();
  final dayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal'),
      ),
      backgroundColor: Color(0xFF15919B),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: buildCashField()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: buildDayField()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ยอดที่ใช้จ่าย $cash',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'อัตราดอกเบี้ย $interest %',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'จำนวนวันที่ใช้ไป $day วัน',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTotal(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCashField() {
    return TextField(
      controller: cashController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Cash',
      ),
    );
  }

  Widget buildDayField() {
    return TextField(
      controller: cashController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Day',
      ),
    );
  }

  Widget buildTotal() {
    total1 = (cash * (interest / 100) * day) / year;
    return Text(
      'อัตราดอกเบี้ย $total1 บาท',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
