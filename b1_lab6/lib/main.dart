import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //The Scaffold widget, from the Material library, provides a
  // default app bar, a title, and a body property that holds the widget
  // tree for the home screen. The widget subtree can be quite
  // complex.
  home: Scaffold(
    appBar: AppBar(
      title: Text('HELLO FLUTTER...MY FIRST APP'),
      centerTitle: true, //for center alignment
      backgroundColor: Colors.amberAccent,
    ),
    //AppBar, which is a horizontal bar typically shown at the top of an app using the appBar property.
      body: Center(
        child: Text('HELLO WORLD',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.lightBlue[600],
            fontFamily: 'MsMadi',
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () { },
      child: Text('press'),
      backgroundColor: Colors.amberAccent,
    ),
  ),
));

