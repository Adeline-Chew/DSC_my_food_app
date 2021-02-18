import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_food/homepage/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color(0xFFFFAB91),
        body: new Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: new Image.asset('lib/image/Logo.png'),
          ),
          SizedBox(
            height: 300.0,
          ),
          // SpinKitRing(
          //   color: Colors.white,
          //   size: 50.0,
          //   duration: Duration(milliseconds: 1200),
          // ),
          SizedBox(
            height: 50.0,
            width: 200.0,
            child: RaisedButton(
              onPressed: (){},
              child: Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          )
        ])),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('How Are You?');
  }
}
