import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of

    home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BUTTONS WIDGET APP',
            style: TextStyle(
              color: Colors.blue
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Click'),
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //         primary: Colors.red,
      //         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      //         textStyle: TextStyle(
      //             fontSize: 40,
      //
      //             fontWeight: FontWeight.bold)),
      //
      //   ),
      // ),
      // body: Center(
      //     child: FlatButton(
      //       onPressed: () {
      //         print('print on consol');
      //       },
      //       child: Text('click Me'),
      //       color: Colors.blue,
      //     ),
      // ),
    // body: Center(
    //   child: TextButton.icon(
    //     icon: Icon(
    //       Icons.photo_camera,
    //       color:Colors.greenAccent,
    //       size: 50.0,
    //     ),
    //     label: Text("Gallery",
    //       style: TextStyle(
    //       color: Colors.black,
    //       fontSize: 40.0,
    //       letterSpacing: 2.0,
    //       backgroundColor: Colors.redAccent,
    //       ),
    //       textAlign: TextAlign.start,
    //     ),
    //     onPressed: () {},
    //   ),
    // ),
      body: Center(
        child: Image(
          image: AssetImage('assets/uwp82162.jpeg'),
        ),
          // child: Directionality(
          //   textDirection: TextDirection.rtl,
          //   child: TextButton.icon(
          //     icon: Icon(
          //       Icons.photo_camera,
          //       color:Colors.greenAccent,
          //       size: 50.0,
          //     ),
          //     label: Text(
          //       "Gallery",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 40.0,
          //         letterSpacing: 2.0,
          //         backgroundColor: Colors.cyanAccent,
          //       ),
          //       textAlign: TextAlign.start,
          //     ),
          //     onPressed: () {},
          //
          //   )
          //   ,
          // ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click
      child: Text('Press'),
      backgroundColor: Colors.red[600],
    ),
    );
  }
}