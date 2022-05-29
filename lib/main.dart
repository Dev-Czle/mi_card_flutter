import 'package:flutter/material.dart';

// https://docs.flutter.dev/development/ui/widgets/layout

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.fromLTRB(30, 10, 50, 20),
            padding: EdgeInsets.all(30),
            color: Colors.red.shade50,
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
