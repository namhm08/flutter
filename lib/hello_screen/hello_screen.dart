import 'package:flutter/material.dart';

class bai1_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: const Text("Hello every one"),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.search))
          ],
      ),

    );
  }

}