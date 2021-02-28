import 'package:flutter/material.dart';

class DonationPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        backgroundColor: Color(0xFFFFCCBC),
        toolbarHeight: 100.0,
      ),
      // body: _buildContent(context),
      backgroundColor: Color(0xFFEEEEEE),
    );
  }
}

 Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Donate",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25.0, color: Colors.black),
        ),
      ],
    );
  }