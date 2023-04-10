import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mydiceapp/widgetCard/dicecard.dart';


void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int TL= 3;
  int TR=1;
  int BL= 3;
  int BR=1;

  void changestate(){
    setState(() {
      TL = Random().nextInt(6) + 1;
      TR=Random().nextInt(6) + 1;
    });
  }
  void changestate2(){
    setState(() {
      BL = Random().nextInt(6) + 1;
      BR=Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(
          child: Text("The Dice App", style: TextStyle(color: Colors.black, fontSize: 50),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: Container(
                  color: Colors.lightGreenAccent, width: 500, height: 100, child: const Padding(padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("A dice app", style: TextStyle(color: Colors.black, fontSize: 75, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              diceCard(),
              diceCard()
              
            ],
          ),
          Row(
            children: [
              diceCard(),
              diceCard()
            ],
          ),
        ],  
      ),
    );
  }
}
