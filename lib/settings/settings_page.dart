import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  // Function used as a testing callback function
  void changeUserName() {
    print("Tapped on container!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10.0),
          )),
          backgroundColor: Color(0xFFFFCCBC),
          toolbarHeight: 100.0,
          title: Row(
            children: <Widget>[
              Container(
                child: Icon(Icons.settings, color: Colors.black),
                padding: EdgeInsets.only(right: 20.0),
              ),
              Text("Settings",
                  style: TextStyle(fontSize: 25.0, color: Colors.black))
            ],
          )),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              SettingsTiles("Change Username", changeUserName),
              Divider(height: 30.0),
              SettingsTiles("I dunno", changeUserName),
              Divider(height: 30.0),
              SettingsTiles("Quit", changeUserName),
              Divider(height: 30.0),
              SizedBox(
                  height: 100.0,
                  width: 200.0,
                  child: new Image.asset('lib/image/Logo.png'))
            ],
          )),
    );
  }
}

class SettingsTiles extends StatelessWidget {
  final String title;
  final Function onTapCallback;

  // Constructor
  SettingsTiles(this.title, this.onTapCallback);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: this.onTapCallback,
        child: Container(
            height: 147.0,
            decoration: BoxDecoration(
                color: Color(0xFFFFCCBC),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(
                child: Text(this.title,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)))));
  }
}