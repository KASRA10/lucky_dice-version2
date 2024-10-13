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
          ],
        ),
      ),
    );
  } // End Of build
} // End Of State
