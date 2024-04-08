// main.dart
import 'package:flutter/material.dart';
import 'other.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Возвращения значения'),
        backgroundColor: Colors.blue, // Голубой цвет для AppBar
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherScreen()),
            ).then((value) {
              if (value != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Выбрано: $value')),
                );
              }
            });
          },
          child: Text('Перейти к выбору...'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent)
        ),
      ),
    );
  }
}
