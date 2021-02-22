import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

final TextStyle subTextStyle = TextStyle(fontSize: 20.0, color: Colors.black);

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
  // Implementation of the AppBar.
  AppBar _homePageAppBar() {
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10.0),
      )),
      backgroundColor: Color(0xFFFFCCBC),
      toolbarHeight: 100.0,
      title: Column(
        // Alligns such that text in column starts from the left
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Text("Welcome back, RandomPerson",
                  style: TextStyle(fontSize: 25.0, color: Colors.black)),
              // padding separates the top and bottom texts
              padding: EdgeInsets.only(bottom: 20.0)),
          CurrentDate()
        ],
      ),
    );
  }

  // Implementation of the first tile.
  Widget _firstSection(BuildContext context) {
    // Not sure how to use InkWell fully yet
    return InkWell(
        // Link to another page
        onTap: () => {
              print("Tapped on firstSection!"),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomPage()))
            },
        child: Container(
            height: 180.0,
            color: Colors.white,
            child: Column(  // ListView
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // The text is 23 pixels in height
                Container(
                  alignment: Alignment.centerLeft,
                    child: Text("My Donations",
                        style: subTextStyle),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                  decoration: BoxDecoration(
                        color: Color(0xFFFFCCBC),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 147.0,
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
                                        lineWidth: 5.0,
                                        percent:
                                            0.6, // need to change this to a variable
                                        center: Text("60%"),
                                        progressColor: Colors.white,
                                      ))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Donated: ",
                                  style: subTextStyle),
                              Text("Target: ",
                                  style: subTextStyle)
                            ],
                          )
                        ]))
              ],
            )));
  }

  Widget _secondSection(BuildContext context) {
    return InkWell(
        // 0Link to another page
        onTap: () => {
              print("Tapped on secondSection!"),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomPage()))
            },
        child: Container(
            height: 180.0,
            color: Colors.white,
            child: Column(  // ListView
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // The text is 23 pixels in height
                Container(
                  alignment: Alignment.centerLeft,
                    child: Text("Events",
                        style: subTextStyle),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                  decoration: BoxDecoration(
                        color: Color(0xFFFFCCBC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 147.0,
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
          backgroundColor: Color(0xFFFFCCBC),
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

// Stateful Widget to get the current day and date.
class CurrentDate extends StatefulWidget {
  @override
  _CurrentDateState createState() => _CurrentDateState();
}

// Stateful Widget to get the current day and date.
class _CurrentDateState extends State<CurrentDate> {
  final String dayDateMonthYear =
      DateFormat('EEEE, d MMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(this.dayDateMonthYear,
            style: subTextStyle));
  }
}
