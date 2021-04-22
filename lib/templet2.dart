import 'package:flutter/material.dart';

class AllData3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Templet 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image.asset('assets/Templet2.jpeg'),
        ),
      ),
    );
  }
}