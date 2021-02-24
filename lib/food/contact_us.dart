import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black87,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          middle: Text("Heading"),
        ),
        child: Center(
          child: Text("Testing"),
        )
    );
  }
}
