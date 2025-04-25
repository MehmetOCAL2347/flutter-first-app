import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.blue,
        backgroundColor: Color.fromARGB(255, 47, 5, 120),
        body: Center(
          child: Text(
            'Text Style added',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),
    ),
  );
}
