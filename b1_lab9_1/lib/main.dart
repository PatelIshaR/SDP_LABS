import 'package:flutter/material.dart';
import 'package:b1_lab9_1/quote_card.dart';
import 'package:b1_lab9_1/quote.dart';
import 'quote.dart'; // due to same directory file no need path

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
    // return QuoteCard();
    return QuoteCard(quote: quote, delete: () {  },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//         children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}

// class QuoteCard extends StatelessWidget {
//   // const QuoteCard({
//   //   Key? key,
//   // }) : super(key: key);
//   final Quote quote;
//   QuoteCard({required this.quote});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 26,
//
//                 color: Colors.deepPurple,
//
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }