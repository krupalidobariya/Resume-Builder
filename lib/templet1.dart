import 'package:flutter/material.dart';

class AllData2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Templet 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          },
          child: Image.asset('assets/Templet1.jpeg'),
        ),
        
      ),
    );
  }
}