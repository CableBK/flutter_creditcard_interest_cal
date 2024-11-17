// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CalPage extends StatefulWidget {
  const CalPage({super.key});

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  var cash = 0;
  var day = 0;
  var interest = 16;
  var year = 365;
  var total1 = 0.0;
  var cash2 = 7000;
  var total3 = 0;

  String cashStr = '';
  String intStr = '';
  String dayStr = '';

  final cashController = TextEditingController();
  final intController = TextEditingController();
  final dayController = TextEditingController();

  void _savecashData() {
    setState(
      () {
        cashStr = cashController.text;
        cash = int.parse(
            cashStr); // Assign the value from the controller to the variable
      },
    );
  }

  void _savedayData() {
    setState(
      () {
        dayStr = dayController.text;
        day = int.parse(
            dayStr); // Assign the value from the controller to the variable
      },
    );
  }

  void _saveintData() {
    setState(
      () {
        intStr = intController.text;
        interest = int.parse(
            intStr); // Assign the value from the controller to the variable
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal'),
      ),
      backgroundColor: Color(0xFFF5F5F1),
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
                Expanded(child: buildInterestField()),
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB81D24),
                    foregroundColor: Color(0xFF000000),
                  ),
                  onPressed: () {
                    _savecashData();
                    _saveintData();
                    _savedayData();
                  },
                  child: const Text(
                    'คำนวน',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF5F5F1)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ยอดที่ใช้จ่าย',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$cash บาท',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'อัตราดอกเบี้ย',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$interest %',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'จำนวนวันที่ใช้ไป',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$day วัน',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
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
        labelText: 'จำนวนยอดที่ใช้ไป',
      ),
    );
  }

  Widget buildInterestField() {
    return TextField(
      controller: intController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'ดอกเบี้ย',
      ),
    );
  }

  Widget buildDayField() {
    return TextField(
      controller: dayController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'จำนวนวันตั้งแต่ใช้ยอด',
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
