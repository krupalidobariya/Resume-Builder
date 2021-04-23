import 'package:flutter/material.dart';
import 'pdf1.dart';

class AllData3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Templet 2"),
      ),
     body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
          child: Column(
        children:[ ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>AllData5()),
            );
          },
          icon: Icon(Icons.add, size: 18),
          label: Text("CREATE PDF"),
        ),
        Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:  Image.asset('assets/Templet2.jpeg'),
                  ),
       ],
      ),
     ),
    )
   ); 
  }
}