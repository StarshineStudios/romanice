import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Inside Column'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Item 1'),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Item 2'),
                  ),
                ),
                const Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    'Overlayed Text',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text('Item 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
