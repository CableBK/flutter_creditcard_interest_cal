import 'package:flutter/material.dart';

class CalPage extends StatefulWidget {
  const CalPage({super.key});

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          children: [Row()],
        ),
      ),
    );
  }
}
