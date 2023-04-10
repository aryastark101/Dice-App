import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'dart:math';

class diceCard extends StatefulWidget {
  const diceCard({super.key});



  @override
  State<diceCard> createState() => _diceCardState();
}

int LDN= 3;
int RDN = 1;


class _diceCardState extends State<diceCard> {

  void changestate(){
    setState(() {
      LDN = Random().nextInt(6) + 1;
      RDN=Random().nextInt(6) + 1;
    });
  }
  // void changestate2(){
  //   setState(() {
  //     BL = Random().nextInt(6) + 1;
  //     BR=Random().nextInt(6) + 1;
  //   });
  // }
  @override

  Widget build(BuildContext context) {
    return Expanded(child: Padding(padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (() {
                  changestate();
                }), 
                child: Image.asset("images/dice$RDN.png")),
              )
              );
                }
}