import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  _incrimnet() {
    setState(() {
      count += 1;
    });
  }

  @override
  _HomePageState createState() => _HomePageState();

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Timer')),
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('count: ${DateTime.now().millisecond}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: _incrimnet,
                  child: Text('start', style: TextStyle(fontSize: 22, color: Colors.white))
              )
            ],
          ),
        ],
      )
    );
  }
}
