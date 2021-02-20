import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/common_widgets/bottom_navigation_bar.dart';

class ShareFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: CustomBottomNavigationBar(1),
        body: Container(
          child: Column(
            children: [Text('Share my food for needy')],
      ),
    ));
  }
}
