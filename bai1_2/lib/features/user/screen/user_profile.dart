import 'package:flutter/material.dart';

class screen_user_profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/img0.jpg'),
        ),
      ),
    );
  }
  
}