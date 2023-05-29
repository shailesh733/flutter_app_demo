import 'package:flutter/material.dart';
import 'package:demo/settingpage.dart';

import 'home_login.dart';

class MainDrawoer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        backgroundColor: Color.fromARGB(255, 241, 239, 240),
        child: Column(children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/book-composition-with-open-book_23-2147690555.jpg")),
                ),
              ),
              Text(
                "Profile Image",
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 229, 236, 241)),
              ),
            ]),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 25),
            ),
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            onTap: () {
              Navigator.of(context).pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyForm()));
            },
          ),
          ListTile(
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 25),
            ),
            leading: Icon(
              Icons.settings,
              size: 35,
            ),
            onTap: () {
              Navigator.of(context).pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),
          ListTile(
            title: Text(
              "Service",
              style: TextStyle(fontSize: 25),
            ),
            leading: Icon(
              Icons.medical_services_outlined,
              size: 35,
            ),
          ),
          ListTile(
            title: Text(
              "Log out",
              style: TextStyle(fontSize: 25),
            ),
            leading: Icon(
              Icons.logout,
              size: 35,
            ),
          ),
        ]),
      ),
    );
  }
}
