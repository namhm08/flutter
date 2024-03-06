import 'package:flutter/material.dart';

class displayImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/img0.jpg'),
        ),
      ),
    );
  }

}