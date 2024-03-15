import 'package:flutter/material.dart';

class EditUserProfileScreen extends StatefulWidget {
  // final CameraDescription cameraDescription;
  //
  //
  @override
  _EditUserProfileScreenState createState() => _EditUserProfileScreenState();

}

class _EditUserProfileScreenState extends State<EditUserProfileScreen> {
  late TextEditingController _fullnameController;
  late String _fullname = "Hoang Minh Nam";
  // final CameraController _cameraController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Edit Profile"),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: (){
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                              height: 200,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  const Text("Choose source image option", style: TextStyle(
                                      fontSize: 20
                                  ),),
                                  TextButton(
                                    style: const ButtonStyle(
                                        overlayColor: MaterialStatePropertyAll(Colors.transparent)
                                    ),
                                    onPressed: (){},
                                    child: const ListTile(
                                      leading: Icon(Icons.camera_alt),
                                      title: Text("Camera"),
                                    ),
                                  ),
                                  TextButton(
                                      style: const ButtonStyle(
                                          overlayColor: MaterialStatePropertyAll(Colors.transparent)
                                      ),
                                      onPressed: (){},
                                      child: const ListTile(
                                        leading: Icon(Icons.image),
                                        title: Text("Gallery"),
                                      )
                                  ),
                                ],
                              )
                          );
                        },
                      );
                    },
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/default-avatar.jpg"),
                    ),
                  ),
                  Text(_fullname, style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextField(
                      controller: _fullnameController,
                      decoration: const InputDecoration(
                          hintText: 'Fullname',
                          icon: Icon(Icons.person),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    onPressed: (){
                      setState(() {
                        _fullname = _fullnameController.text;
                        _fullnameController.clear();
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: const Text("Update", style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fullnameController = TextEditingController();
  }
}
