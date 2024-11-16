// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CalPage extends StatefulWidget {
  const CalPage({super.key});

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  var cash = 0;
  var day = 9;
  var interest = 16;
  var year = 365;
  var total1 = 0.0;
  var cash2 = 7000;
  var total3 = 0;

  String cashStr = '';
  final cashController = TextEditingController();
  final dayController = TextEditingController();

  void _savecashData() {
    setState(
      () {
        cashStr = cashController
            .text;
            cash = int.parse(cashStr); // Assign the value from the controller to the variable
      },
    );
  }

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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: buildDayField()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _savecashData();
                  },
                  child: const Text('คำนวน'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'ยอดที่ใช้จ่าย $cash',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'อัตราดอกเบี้ย $interest %',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'จำนวนวันที่ใช้ไป $day วัน',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            buildTotal(),
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
    String formattedTotal1 = total1.toStringAsFixed(2);
    return Text(
      'อัตราดอกเบี้ย $formattedTotal1 บาท',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
