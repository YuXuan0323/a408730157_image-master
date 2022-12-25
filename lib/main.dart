import 'package:flutter/material.dart';
import 'b_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('首頁'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BPage()));
            },
            child: Text('新竹一日遊'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BPage()));
            },
            child: const Text('東區逛街日'),
          ),
        ],
      ),
    );
  }
}
