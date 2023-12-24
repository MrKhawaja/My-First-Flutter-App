import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text(
            "Ninja ID Card",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[700],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/thumb.jpg"),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
                thickness: 5,
              ),
              const Text("NAME",
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
              const SizedBox(
                height: 10,
              ),
              Text("Chun-Li",
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const Text("CURRENT NINJA LEVEL",
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
              const SizedBox(
                height: 10,
              ),
              Text("$ninjaLevel",
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[200]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "chun.li@gmail.com",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
