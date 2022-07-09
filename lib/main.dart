import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: MyApp()) );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: TextButton(onPressed: (){
        setState(() {
          imageNumber=Random().nextInt(5)+1;
        });

      },child: Image.asset('images/ball$imageNumber.png'))),

      appBar: AppBar(title:Text('Find Your Answers here??'),
      backgroundColor: Colors.blue[800],
      ),
    );
  }
}
