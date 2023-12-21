import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int value = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
      );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dkash',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          color:Colors.black,
          padding: EdgeInsets.symmetric(horizontal:150.0,vertical: 100),
          child:Text("hehe",style: TextStyle(color:Colors.white))
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { },
          backgroundColor: Colors.black,
          child: const Text("+",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
        ),
        );
  }

}

