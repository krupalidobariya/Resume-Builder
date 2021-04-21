import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'templets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;
  Future _getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
      print('_image: $_image');
    });
  }

  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
          child: Column(
        children : [

          
          Text(
          "Add Image",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

          GestureDetector(
            onTap: _getImage,
            child:Container(
              color: Colors.black12,
              child: _image == null ? Icon(Icons.add) : Image.file(_image),
            ),
          ),

          TextField( 
            decoration: InputDecoration( 
            hintText:"Enter your Full Name:",
            border: InputBorder.none
            ),  
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Phone no:" ,
            prefixIcon: Icon(Icons.phone),
            border: InputBorder.none
            ), 
            keyboardType: TextInputType.number 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Email:",
            prefixIcon: Icon(Icons.email),
            border: InputBorder.none
            ), 
            keyboardType: TextInputType.emailAddress
        ),
        
        TextField( 
            decoration: InputDecoration( 
            hintText:"Address:" ,
            border: InputBorder.none
            ), 
        ),

          TextField( 
            decoration: InputDecoration( 
            hintText:"City:" ,
            border: InputBorder.none
            ), 
        ),

        Text(
          "EDUCATION",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),
  
        TextField( 
            decoration: InputDecoration( 
            hintText:"Institute:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Degree:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Date:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"CGPA:" ,
            border: InputBorder.none
            ), 
        ),
 
         Text(
          "SKILLS",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

        Text(
          "Languages",
          textAlign: TextAlign.left,
          textScaleFactor: 1.1,
          style: TextStyle(
            color: Colors.purple
          ),
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Add Language:",
            border: InputBorder.none
            ), 
        ),

        Text(
          "Tools, Technologies and other Skills",
          textAlign: TextAlign.center,
          textScaleFactor: 1.1,
          style: TextStyle(
            color: Colors.purple
          ),
 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Add other Skills:" ,
            border: InputBorder.none
            ), 
        ),

        Text(
          "EXPERIENCE",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

      TextField( 
            decoration: InputDecoration( 
            hintText:"Company:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Designation:" ,
            border: InputBorder.none
            ), 
        ),

      TextField( 
            decoration: InputDecoration( 
            hintText:"Date:" ,
            border: InputBorder.none
            ), 
        ),
       
       TextField( 
            decoration: InputDecoration( 
            hintText:"Details:" ,
            border: InputBorder.none,
            ), 
            maxLines: 3,
        ),

        Text(
          "PROJECTS",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Project Title:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"URL:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Date:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Details:" ,
            border: InputBorder.none
            ), 
            maxLines: 3,
        ),

         Text(
          "ACHIEVEMENTS",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Title:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Date:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Details:" ,
            border: InputBorder.none
            ), 
            maxLines: 3,
        ),

         Text(
          "ADD CUSTOM SECTION",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
          ),
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Title:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Date:" ,
            border: InputBorder.none
            ), 
        ),

        TextField( 
            decoration: InputDecoration( 
            hintText:"Details:" ,
            border: InputBorder.none
            ),
            maxLines: 3, 
        ),
        
     /* TextButton.icon(
      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TextField( 
            decoration: InputDecoration( 
            hintText:"Title:" ,
            border: InputBorder.none
            ), 
        ),
        ),
     );
       },
      icon: Icon(Icons.add, size: 18),
      label: Text("TEXT BUTTON"),
       ),*/
       

      ElevatedButton.icon(
      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>AllData()),
     );
  },
  icon: Icon(Icons.add, size: 18),
  label: Text("CREATE"),
),

        ],
      ),
     ),
    )
   ); 
  }
}