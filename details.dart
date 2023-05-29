import 'package:flutter/material.dart';

clickMefunction() {
  print("test asynch await");
  print("test asynch await2");
  testFun();

  print("test asynch await3");
}

testFun() async {
  await Future.delayed(Duration(seconds: 5), () {
    print("test fun");
  });
  print("test fun first");
}

class MyPageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Page",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to detail page",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            FloatingActionButton(
                child: Icon(Icons.arrow_back),
                onPressed: () {
                  clickMefunction();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
