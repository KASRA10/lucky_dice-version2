import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LuckyDiceChanger(),
    ),
  );
} // End Of Main

class LuckyDiceChanger extends StatefulWidget {
  const LuckyDiceChanger({super.key});

  @override
  State<LuckyDiceChanger> createState() => _LuckyDiceChangerState();
}

class _LuckyDiceChangerState extends State<LuckyDiceChanger> {
  // Flutter Toast Message
  void newToastMessage(String message) => Fluttertoast.showToast(
        msg: message,
        textColor: Colors.white,
        backgroundColor: Colors.green[400],
        fontSize: 18,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          toolbarHeight: 70.0,
          shadowColor: Colors.green[400],
          elevation: 15,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                15.0,
              ),
              bottomRight: Radius.circular(
                15.0,
              ),
            ),
          ),
          leading: BackButton(
            color: Colors.white,
            onPressed: () => exit(0),
          ),
          title: Text(
            'Lucky Dice',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Amaranth',
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            MenuItemButton(
              onPressed: () => newToastMessage(
                'It is Not Available',
              ),
              child: Icon(
                Icons.short_text_sharp,
                color: Colors.white,
                semanticLabel: 'Go To Main Menu, Setting',
              ),
            )
          ], // Action[]
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Every Dice Number Has A Special Meaning Here!!!',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Amaranth',
                    fontSize: 14,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 100,
                  indent: 100,
                ),
                Text(
                  'All Your Six Dices Would Be Counted',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Amaranth',
                    fontSize: 12,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 150,
                  indent: 150,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green[400],
                  alignment: Alignment.center,
                  child: Text(
                    'Good Luck',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice1.png',
                    width: 30,
                    semanticLabel: 'A First Dice Icon',
                  ),
                  title: Text(
                    '1. It is Just Beginning!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice2.png',
                    width: 30,
                    semanticLabel: 'A Second Dice Icon',
                  ),
                  title: Text(
                    '2. Even Not Close!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice3.png',
                    width: 30,
                    semanticLabel: 'A Third Dice Icon',
                  ),
                  title: Text(
                    '3. Never Give Up!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice4.png',
                    width: 30,
                    semanticLabel: 'A Fourth Dice Icon',
                  ),
                  title: Text(
                    '4. a little More!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice5.png',
                    width: 30,
                    semanticLabel: 'A Fifth Dice Icon',
                  ),
                  title: Text(
                    '5. Not Today!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'lib/images/dice6.png',
                    width: 30,
                    semanticLabel: 'A Sixth Dice Icon',
                  ),
                  title: Text(
                    '6. BOOM!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ], // columnChildren[]
            ),
          ),
        ),
      ),
    );
  } // End Of build
} // End Of State
