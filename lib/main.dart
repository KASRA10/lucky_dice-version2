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

  int imageNumber = 1;
  int sixCounter = 0;

  // Create A Random Number Between 1 to 6 For Showing Dice Images With Their Number.
  void imageNumberChanger() {
    setState(
      () {
        imageNumber = Random().nextInt(6) + 1;
      },
    );
    sixCounter += imageNumber == 6 ? 1 : 0;
  } // End Of imageNumberCHanger

  // Reset Numbers Method
  void resetTheGame() {
    setState(() {
      imageNumber = 1;
      sixCounter = 0;
    });
  } // End Of resetTheGame

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          toolbarHeight: 70.0,
          shadowColor: Colors.green[400],
          elevation: 15,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
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
          title: const Text(
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
              child: const Icon(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Every Dice Number Has A Special Meaning Here!!!',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Amaranth',
                    fontSize: 14,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  endIndent: 100,
                  indent: 100,
                ),
                const Text(
                  'All Your Six Dices Would Be Counted',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Amaranth',
                    fontSize: 12,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  endIndent: 150,
                  indent: 150,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  leading: Image.asset(
                    'lib/images/dice1.png',
                    width: 20,
                    semanticLabel: 'A First Dice Icon',
                  ),
                  title: const Text(
                    'It is Just Beginning!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  leading: Image.asset(
                    'lib/images/dice2.png',
                    width: 20,
                    semanticLabel: 'A Second Dice Icon',
                  ),
                  title: const Text(
                    'Even Not Close!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  leading: Image.asset(
                    'lib/images/dice3.png',
                    width: 20,
                    semanticLabel: 'A Third Dice Icon',
                  ),
                  title: const Text(
                    'Never Give Up!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  leading: Image.asset(
                    'lib/images/dice4.png',
                    width: 20,
                    semanticLabel: 'A Fourth Dice Icon',
                  ),
                  title: const Text(
                    'A little More!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  leading: Image.asset(
                    'lib/images/dice5.png',
                    width: 20,
                    semanticLabel: 'A Fifth Dice Icon',
                  ),
                  title: const Text(
                    'Not Today!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 98.0,
                  ),
                  enableFeedback: true,
                  leading: Image.asset(
                    'lib/images/dice6.png',
                    width: 20,
                    semanticLabel: 'A Sixth Dice Icon',
                  ),
                  title: const Text(
                    'BOOM!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Amaranth',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.vertical,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    SizedBox(
                      width: 110.0,
                      height: 110.0,
                      child: Image.asset(
                        'lib/images/dice$imageNumber.png',
                      ),
                    ),
                    Text(
                      'Number Of Sixes: $sixCounter',
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Amaranth',
                        fontSize: 14,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () => imageNumberChanger(),
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 84.0,
                        ),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.green,
                        ),
                      ),
                      label: Text(
                        'Roll',
                        style: TextStyle(
                          color: Colors.green[400],
                          fontFamily: 'Amaranth',
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      icon: Icon(
                        Icons.gamepad_outlined,
                        color: Colors.green[400],
                        size: 20,
                        semanticLabel: 'Roll Loop',
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () => resetTheGame(),
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 80.0,
                        ),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.green,
                        ),
                      ),
                      label: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.green[400],
                          fontFamily: 'Amaranth',
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      icon: Icon(
                        Icons.loop_outlined,
                        color: Colors.green[400],
                        size: 20,
                        semanticLabel: 'Roll Loop',
                      ),
                    ),
                  ],
                ),
              ], // columnChildren[]
            ),
          ),
        ),
      ),
    );
  } // End Of build
} // End Of State
