import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: 100,
    );
  }
}
