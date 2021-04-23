import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';


class AllData4 extends StatelessWidget {
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
                    child:  Image.asset('assets/Templet1.jpeg'),
                  ),
       ],
      ),
     ),
    )
      
      
      );
  }
}