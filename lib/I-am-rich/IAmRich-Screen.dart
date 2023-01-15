import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: Image(
                image: AssetImage('images/diamon.png'),
              ),
            )),
      );
  }
}
