import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/custom_raised_button.dart';
import 'package:my_food/donation/donation_details.dart';

class EventCardButton extends CustomRaisedButton {
  EventCardButton({
    @required final String eventTitle,
    @required final BuildContext context,
  }) : super(
          color: Color(0xFFFFCCBC),
          child: Column(
            children: <Widget>[
              SizedBox(height: 160.0),
              Text(
                eventTitle,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          height: 200.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonationDetails()),
            );
          },
        );
}
