import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  String column1Text1 = '';
  String column1Text2 = '';
  String column1Text3 = '';

  Color column2Color1 = Colors.red;
  Color column2Color2 = Colors.green;
  Color column2Color3 = Colors.blue;

  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _generateRandomNouns();
  }

  String _getRandomNoun() {
    return nouns[_random.nextInt(nouns.length)].toLowerCase();
  }

  void _generateRandomNouns() {
    setState(() {
      column1Text1 = _getRandomNoun();
      column1Text2 = _getRandomNoun();
      column1Text3 = _getRandomNoun();
    });
  }

  void randomizeColumn2Colors() {
    setState(() {
      List<Color> colors = [Colors.red, Colors.green, Colors.blue];
      colors.shuffle(_random);
      column2Color1 = colors[0];
      column2Color2 = colors[1];
      column2Color3 = colors[2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                        column1Text1,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Text(
                        column1Text2,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        column1Text3,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      color: column2Color1,
                      alignment: Alignment.center,
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      color: column2Color2,
                      alignment: Alignment.center,
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      color: column2Color3,
                      alignment: Alignment.center,
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextButton(
                  onPressed: _generateRandomNouns,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Change Words",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextButton(
                  onPressed: randomizeColumn2Colors,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Change Colors",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
