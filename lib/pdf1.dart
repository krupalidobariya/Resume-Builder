import 'package:flutter/material.dart';


class AllData5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF"),
      ),
      body:Padding(
                    padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
        child: Column(
        children:[ RaisedButton(
                        onPressed: () {
                         /* Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>AllData2()),
                          );*/
                          // Perform some action
                        },
                        child: const Text('Download PDF'),
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