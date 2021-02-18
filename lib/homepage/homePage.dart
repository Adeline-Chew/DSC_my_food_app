import 'package:flutter/material.dart';
import 'package:my_food/bottom_navigation_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// TO-DO-List
// 1) Get the current date and time
// 2) Get the username details
// 3) Get the donation progress to update the percentage
// 4) Page navigation for the first and second tiles

void main() {
  runApp(MyApp());
}

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
  String _getCurrentDay() {
    DateTime now = new DateTime.now();
  }

  // Implementation of the AppBar.
  AppBar _homePageAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFFFCCBC),
      toolbarHeight: 100.0,
      title: Column(
        // Alligns such that text in column starts from the left
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Text("Welcome back, RandomPerson",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              // padding separates the top and bottom texts
              padding: EdgeInsets.only(bottom: 20)),
          Text("Wednesday, 10th February 2021",
              style: TextStyle(fontSize: 20, color: Colors.black))
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
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // The text is 23 pixels in height
                Container(
                    child: Text("My Donations",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                    height: 147.0,
                    color: Color(0xFFFFCCBC),
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)),
                              Text("Target: ",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black))
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
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // The text is 23 pixels in height
                Container(
                    child: Text("Events",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                  height: 147.0,
                  color: Color(0xFFFFCCBC),
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: this._homePageAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(0),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              this._firstSection(context),
              this._secondSection(context)
            ])));
  }

  // @override
  // State<StatefulWidget> createState() {
  //   return _HomeState();
  // }
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

// Iz was here