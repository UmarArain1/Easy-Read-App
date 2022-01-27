import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize=40.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction:TextInputAction.done,
                  maxLines: null,

                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
              ),
              Slider(value: _fontSize,
                  max: 200,
                  min: 40,
                  onChanged: (newSize) {
                setState(() {
                 _fontSize=newSize;
                });

              }

              ),



            ],
          ),
        ),
      ),
    );
  }
}
