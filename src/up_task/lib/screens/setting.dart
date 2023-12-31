import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SettingsOnePage extends StatefulWidget {
  static const String path = "lib/src/pages/settings/settings1.dart";

  const SettingsOnePage({super.key});

  @override
  _SettingsOnePageState createState() => _SettingsOnePageState();
}

class _SettingsOnePageState extends State<SettingsOnePage> {
  late bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle:
              _dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(FontAwesomeIcons.moon),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromARGB(255, 31, 96, 235),
                    child: ListTile(
                      onTap: () {
                        //open edit profile
                      },
                      title: const Text(
                        "Cry0Cell",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: CircleAvatar(
                          //backgroundImage: NetworkImage(avatars[0]),
                          ),
                      trailing: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 31, 96, 235),
                          ),
                          title: const Text("Change Password"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: const Icon(
                            FontAwesomeIcons.language,
                            color: Color.fromARGB(255, 31, 96, 235),
                          ),
                          title: const Text("Change Fonts"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {},
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: const Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 31, 96, 235),
                          ),
                          title: const Text("Themes"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 31, 96, 235),
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: const Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 31, 96, 235),
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: const Text("Received newsletter"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 31, 96, 235),
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: const Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 112, 7, 131),
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 11.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Color.fromARGB(255, 243, 9, 9),
    );
  }
}
