import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'currentDate.dart';

// Colors used
final Color defaultFontColor = Colors.black;
final Color defaultColor = Colors.deepOrange[100];
final Color defaultBackgroundColor = Colors.white;

// Sizes used
final double defaultCircularRadius = 10.0;
final double defaultFontSize = 20.0;

// Styles used
final TextStyle defaultTextStyle =
    TextStyle(fontSize: defaultFontSize, color: defaultFontColor);
final TextStyle secondaryTextStyle =
    TextStyle(fontSize: 15.0, color: defaultFontColor);
final BoxDecoration defaultContainerDecoration = BoxDecoration(
    color: defaultColor,
    borderRadius: BorderRadius.all(Radius.circular(defaultCircularRadius)));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Developers Competition 2021",
      home: GoogleDeveloperHomePage(),
    );
  }
}

class GoogleDeveloperHomePage extends StatelessWidget {
  final String myDashboard = "My Dashboard";

  // Implementation of the AppBar.
  AppBar _homePageAppBar() {
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(defaultCircularRadius),
      )),
      backgroundColor: defaultColor,
      toolbarHeight: 100.0,
      title: Row(children: <Widget>[
        Container(
            child: Column(
          // Alligns such that text in column starts from the left
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Text(myDashboard, style: defaultTextStyle),
                // padding separates the top and bottom texts
                padding: EdgeInsets.only(bottom: 20.0)),
            CurrentDate()
          ],
        )),
        Container(
            child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset('lib/image/Logo.png')))
      ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
    );
  }

  // Implementation of the first tile.
  Widget _firstSection(BuildContext context) {
    final String myDonations = "My Donations";
    final String donated = "Donated: ";
    final String target = "Target: ";

    return InkWell(
        // Link to another page
        onTap: () => {
              print("Tapped on firstSection!"),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomPage()))
            },
        child: Container(
            height: 190.0,
            color: defaultBackgroundColor,
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    // The text is 23 pixels in height
                    child: Text(myDonations, style: defaultTextStyle),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                    decoration: defaultContainerDecoration,
                    height: 145.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 100.0,
                              alignment: Alignment.center,
                              child:
                                  // To make the CircularProgressIndicator widget bigger
                                  SizedBox(
                                      height: 80.0,
                                      width: 80.0,
                                      // Need to include dependency
                                      child: CircularPercentIndicator(
                                        radius: 80.0,
                                        lineWidth: 8.0,
                                        percent:
                                            0.6, // need to change this to a variable
                                        center: Text("60%",
                                            style: secondaryTextStyle),
                                        progressColor: defaultBackgroundColor,
                                      ))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(donated, style: secondaryTextStyle),
                              Text(target, style: secondaryTextStyle)
                            ],
                          )
                        ]))
              ],
            )));
  }

  Widget _secondSection(BuildContext context) {
    final double heightAndWidth = 80.0;
    final String discover = "Discover";
    final List<String> namesList = [
      "Food Banks",
      "Make a Donation",
      "Events Around You"
    ];
    final List<Icon> iconsList = [
      Icon(FontAwesome.cutlery),
      Icon(FlutterIcons.charity_mco, size: 30.0),
      Icon(FontAwesome5.map)
    ];

    final BoxDecoration asdf = BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.all(Radius.circular(defaultCircularRadius)));

    return Container(
        height: 190.0,
        color: defaultBackgroundColor,
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                // The text is 23 pixels in height
                child: Text(discover, style: defaultTextStyle),
                padding: EdgeInsets.only(bottom: 10.0)),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: defaultContainerDecoration,
              height: 145.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Think of another icon, dont reuse
                  InkWell(
                      onTap: () => print(namesList[0]),
                      child: Container(
                          height: heightAndWidth,
                          width: heightAndWidth,
                          decoration: asdf,
                          child: Tooltip(
                            message: namesList[0],
                            child: iconsList[0],
                            preferBelow: false,
                          ))),
                  // Think of another icon, dont reuse
                  InkWell(
                      onTap: () => print(namesList[1]),
                      child: Container(
                          height: heightAndWidth,
                          width: heightAndWidth,
                          decoration: asdf,
                          child: Tooltip(
                            message: namesList[1],
                            child: iconsList[1],
                            preferBelow: false,
                          ))),
                  // Think of another icon, dont reuse
                  InkWell(
                      onTap: () => print(namesList[2]),
                      child: Container(
                          height: heightAndWidth,
                          width: heightAndWidth,
                          decoration: asdf,
                          child: Tooltip(
                            message: namesList[2],
                            child: iconsList[2],
                            preferBelow: false,
                          ))),
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBackgroundColor,
        appBar: this._homePageAppBar(),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Divider(height: 30.0),
              this._firstSection(context),
              Divider(height: 30.0),
              this._secondSection(context)
            ])));
  }
}

// Used for testing out page navigation
class RandomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: defaultColor,
          toolbarHeight: 100.0,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
        ));
  }
}
