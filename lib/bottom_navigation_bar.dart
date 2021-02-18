import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar(this.index) : assert(index != null);
  // final Color color = Color(0xFFFFCCBC);
  final Color color = Colors.teal[700];
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[100],
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.indigo),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: this.color, size: 25.0),
      unselectedIconTheme: IconThemeData(color: this.color, size: 25.0),
      currentIndex: index,

      items: [
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome.home, size: 30.0,),
            label: "Home"),
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome.cutlery,),
            label: "Food"),
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome5.map, ),
            label: "Map"),
        BottomNavigationBarItem(
            icon: new Icon(FlutterIcons.charity_mco, size: 30.0,),
            label: "Donate"),
        BottomNavigationBarItem(
            icon: new Icon(Icons.settings, size: 30.0,),
            label: "Settings")
      ],

    );
  }
}
