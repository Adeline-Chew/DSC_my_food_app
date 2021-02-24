import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/event_card_button.dart';

class DonationMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        backgroundColor: Color(0xFFFFCCBC),
        toolbarHeight: 100.0,
      ),
      body: _buildContent(context),
      backgroundColor: Color(0xFFEEEEEE),
    );
  }

  Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Donation",
          style: TextStyle(fontSize: 25.0, color: Colors.black),
        ),
        SizedBox(height: 10.0),
        Text(
          "Make a difference now",
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w300, color: Colors.black),
        )
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final double space = 16.0;
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView(
        children: <Widget>[
          SizedBox(height: space),
          EventCardButton(
              eventTitle: "Support Families in Nigeria", context: context),
          Divider(height: space),
          EventCardButton(
              eventTitle: "Support Families in Nigeria", context: context),
          Divider(height: space),
          EventCardButton(
              eventTitle: "Support Families in Nigeria", context: context),
          Divider(height: space),
          EventCardButton(
              eventTitle: "Support Families in Nigeria", context: context),
          SizedBox(height: space),
        ],
      ),
    );
  }
}