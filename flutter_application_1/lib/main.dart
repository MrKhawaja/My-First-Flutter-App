import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("Ebarer Shongram Amader Muktir Shongram", "Alvee Hawak"),
    Quote("Ebarer Shongram Amader Shadhinotar Shongram", "Alvee Hawak"),
    Quote("Joy Bangla", "Alvee Hawak")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: quotes
                  .map((quote) => QuoteCard(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      }))
                  .toList()),
        ],
      ),
    );
  }
}
