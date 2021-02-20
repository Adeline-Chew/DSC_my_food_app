import 'package:flutter/material.dart';
import 'package:my_food/food/share_food.dart';
import '../homepage/app.dart';
import '../homepage/homePage.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => ListOfPages(
        tabItem: this.tabItem,
    )
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}

class ListOfPages extends StatelessWidget{
  ListOfPages({this.tabItem});

  final TabItem tabItem;

  Widget switchPages (TabItem item) {
    var retVal;
    switch(item){
      case TabItem.homePage:
        retVal = GoogleDeveloperHomePage();
        break;
      case TabItem.shareFood:
        retVal = ShareFood();
        break;
      case TabItem.map:
        // TODO: Handle this case.
        break;
      case TabItem.donation:
        // TODO: Handle this case.
        break;
      case TabItem.settings:
        // TODO: Handle this case.
        break;
    break;}
    return retVal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchPages(this.tabItem),
    );
  }
}

