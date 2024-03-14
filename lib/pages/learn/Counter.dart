import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(count.toString()),
          onPressed: () => onPressed(),
        ),
      ),
    );
  }

  onPressed() {
    setState(() {
      count++;
    });
  }
}
