import 'package:flutter/material.dart';

class DonationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        backgroundColor: Color(0xFFFFCCBC),
        toolbarHeight: 80.0,
        elevation: 0.0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Details",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25.0, color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView(
      children: <Widget>[_buildTopSection(), _buildBottomSection()],
    );
  }

  Widget _buildTopSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFCCBC),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: SizedBox(height: 300.0),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildBottomSection() {
    final double bigSpace = 25.0;
    final double smallSpace = 10.0;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Support Families in Nigeria",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: bigSpace),
          Text(
            "Overview",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: smallSpace),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Ultrices neque ornare aenean euismod elementum.",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: bigSpace),
          Text(
            "Location",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: smallSpace),
        ],
      ),
    );
  }
}
