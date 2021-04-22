//import 'dart:html';

import 'package:flutter/material.dart';
import 'templet1.dart';
import 'templet2.dart';

class AllData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
 
   return Scaffold(
      appBar: AppBar(
        title: Text("Templets"),
      ),
      body: ListView(
        children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                  //  leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
          "Templet 1",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.blue
            
          ),
        ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:  Image.asset('assets/Templet1.jpeg'),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>AllData2()),
                          );
                          // Perform some action
                        },
                        child: const Text('Chhose'),
                      ),
                    ],
                  ),
                 // Image.asset('assets/Templet1.jpeg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    //leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text(
          "Templet 2",
          textAlign: TextAlign.start,
          textScaleFactor: 1.3,
          style: TextStyle(
          color: Colors.blue ,
            
          ),
        ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/Templet2.jpeg'),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>AllData3()),
                          );
                        },
                        child: const Text('Choose'),
                      ),
                      
                    ],
                  ),
                 // Image.asset('assets/card-sample-image-2.jpg'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: shrinePink100,
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
      letterSpacing: defaultLetterSpacing,
    ),
    title: base.title.copyWith(
      fontSize: 18,
      letterSpacing: defaultLetterSpacing,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
    body2: base.body2.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: defaultLetterSpacing,
    ),
    body1: base.body1.copyWith(
      letterSpacing: defaultLetterSpacing,
    ),
    subhead: base.subhead.copyWith(
      letterSpacing: defaultLetterSpacing,
    ),
    display1: base.display1.copyWith(
      letterSpacing: defaultLetterSpacing,
    ),
    button: base.button.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: shrineBrown900,
    bodyColor: shrineBrown900,
  );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
