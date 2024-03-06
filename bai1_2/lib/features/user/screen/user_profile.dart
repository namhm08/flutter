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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/img0.jpg'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Hoang Minh Nam',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text('namhmhe176539@fpt.edu.vn'

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02),
          ),

          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: 100,
          ),
        ],
      ),
    );
  }

}