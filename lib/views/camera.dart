import 'package:flutter/material.dart';
// import 'package:srp/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Language Translator',
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 120, left: 40, right: 40, bottom: 80),
            padding: EdgeInsets.all(14.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Text(
              "Welcome to our InstantNews App",
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue[900]),
            child: Text(
              "This is an application made using Flutter Framework that uses NewsAPI for fetching latest news happening around the world",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
