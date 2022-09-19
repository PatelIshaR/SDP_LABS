//--------------------------custom class--------------------------/
import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'package:b1_lab8/quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'Isha'),

    Quote(author: 'Vishwa', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Kunjal'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.black,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.orange,

              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}


//---------------------Statefull widget---------------------------/
// import 'package:flutter/material.dart';
// void main() => runApp(MaterialApp(
//   home: FinalTest1(),
// ));
// class FinalTest1 extends StatefulWidget {
//   @override
//   State<FinalTest1> createState() => _FinalTest1State();
// }
//
// class _FinalTest1State extends State<FinalTest1> {
// // const FinalTest1({Key? key}) : super(key: key);
//   num age = 20;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orangeAccent,
//       appBar: AppBar(
//         title: Text('Lab 8',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.yellowAccent,
//         elevation: 0.0,
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//         FloatingActionButton(
//             onPressed: () {
//         // // following can't changes the variables 'state' value
//         // // age++;
//         // // apply following code to change any state variable value
//             setState(() {
//             age += 1;
//             });
//           },
//             child: Icon(Icons.add),
//             backgroundColor: Colors.blue,
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               setState(() {
//                 age -= 1;
//               });
//             },
//             child: Icon(Icons.remove),
//             backgroundColor: Colors.blue,
//           ),
//         ],
//       ),
//     //
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/user.jpg'),
//             ),
//             Text(
//               'NAME: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Isha Patel',
//               style: TextStyle(
//                 color: Colors.black,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//
//               '$age',
//               style: TextStyle(
//                 color: Colors.black,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.black,
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   'ishapatel.ce@ddu.ac.in',
//
//                   style: TextStyle(
//
//                     color: Colors.brown[800],
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//
//   }
// }

// class Tes extends StatefulWidget{
//   const Tes({Key? key}) : super(key: key);
//
//   @override
//   State<Tes> createState() => _TesState();
// }
//
// class _TesState extends State<Tes>{
//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }
