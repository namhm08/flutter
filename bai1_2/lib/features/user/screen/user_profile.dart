import 'package:bai1_2/features/user/screen/Square.dart';
import 'package:bai1_2/features/user/screen/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class screen_user_profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: const Text("Profile"),
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
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
          const Text("namhmhe176539@fpt.edu.vn"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02),
          ),
          listTile(
            context,
            'My Account',
            'Change to your account details',
            Icons.account_circle_rounded,
            Icons.arrow_forward_ios, // Trailing icon data
          ),
          listTile(
            context,
            'Save Contact',
            'Manage your saved contact',
            Icons.account_circle_rounded,
            Icons.arrow_forward_ios, // Trailing icon data
          ),

          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
            title: const Text('Face ID/ Touch ID'),
            subtitle: const Text('Manage your device security',
              style: TextStyle(
                color: CupertinoColors.inactiveGray,
                fontSize: 12,
              ),
            ),
            leading: Icon(Icons.lock_rounded,
              color: Colors.green,
            ),
            trailing: SwitchExample(),
          ),
          listTile(
            context,
            'Two-Factor Authentication',
            'Further secure your account for safety',
            Icons.security,
            Icons.arrow_forward_ios, // Trailing icon data
          ),
          listTile(
            context,
            'Log out',
            'Further security your account for safety',
            Icons.logout,
            Icons.arrow_forward_ios, // Trailing icon data
          ),
        ],
      ),
    );
  }
}

Widget bottomButton( String text, IconData iconData,
[Color color = Colors.black]) =>
IconButton(
    onPressed: (){},
    icon: Column(
      children: [
        Icon(iconData, color: color,),
        Text(text),
      ],
    ),
);

Widget listTile(BuildContext context, String title, String subTitle, IconData leadingIcon, IconData trailingIconData) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
    title: Text(title),
    subtitle: Text(
      subTitle,
      style: TextStyle(
        color: CupertinoColors.inactiveGray,
        fontSize: 12,
      ),
    ),
    leading: Icon(
      leadingIcon,
      color: Colors.green,
    ),
    trailing: Icon(
      trailingIconData,
      color: Colors.green, // You can change the color of the trailing icon here
    ),
  );
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.green,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

