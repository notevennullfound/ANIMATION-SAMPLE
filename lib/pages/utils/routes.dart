
import 'package:all_demos/pages/pageOne.dart';
import 'package:all_demos/pages/pageThree.dart';
import 'package:all_demos/pages/pageTwo.dart';
import 'package:all_demos/pages/utils/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.pageOne :
        return MaterialPageRoute(
            builder: (context) => PageOne(name: 'RAJ', age: 10));
      case RouteName.pageTwo :
        return MaterialPageRoute(builder: (context) => PageTwo(data: settings.arguments as Map,));
      case RouteName.pageThree :
        return MaterialPageRoute(builder: (context) => PageThree());
      default :
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('Error')),
          );
        });
    }
  }


}