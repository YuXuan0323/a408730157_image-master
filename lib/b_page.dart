
import 'package:flutter/material.dart';
import 'c_page.dart';


void main() => runApp(BPage());

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('新竹一日遊'),
          ),
          body: HomePage(),

          ),
      );
    }
  }
  class HomePage extends StatelessWidget {
    final TextEditingController myController = new TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: myController,
              decoration: InputDecoration(hintText: '請輸入...'),
              ),
              TextButton(
                child: Text('印出輸入框內容'),
                onPressed: btnEvent,
              )
        ],
      ),
    );
  }
  void btnEvent() {
    print(myController.text);
    }
  }