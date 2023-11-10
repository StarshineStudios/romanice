import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyParentWidget(),
    );
  }
}

class MyParentWidget extends StatefulWidget {
  @override
  _MyParentWidgetState createState() => _MyParentWidgetState();
}

class _MyParentWidgetState extends State<MyParentWidget> {
  List<bool> expandedStates = [false, false, false]; // Keep track of expanded state for each child

  void toggleExpanded(int index) {
    setState(() {
      expandedStates[index] = !expandedStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Expanded Example'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              for (int i = 0; i < expandedStates.length; i++) {
                toggleExpanded(i);
              }
            },
            child: Text('Toggle Expanded'),
          ),
          MyChildWidget(expanded: expandedStates[0]),
          MyChildWidget(expanded: expandedStates[1]),
          MyChildWidget(expanded: expandedStates[2]),
        ],
      ),
    );
  }
}

class MyChildWidget extends StatefulWidget {
  final bool expanded;

  MyChildWidget({required this.expanded});

  @override
  _MyChildWidgetState createState() => _MyChildWidgetState();
}

class _MyChildWidgetState extends State<MyChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.expanded ? 'Expanded' : 'Not Expanded'),
      ),
    );
  }
}
