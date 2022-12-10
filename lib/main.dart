import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: myapp(),
));


class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  var quotes = [
    Quote('i have the high ground', 'obiwan kinobi'),
    Quote('if so powerful you are why run?', 'master yoda'),
    Quote('do it', 'emperor palpatine')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
        ),
      ),
    );
  }
}
