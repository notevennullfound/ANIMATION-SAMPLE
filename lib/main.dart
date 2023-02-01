import 'package:all_demos/ClipPath.dart';
import 'package:all_demos/ExpAniController.dart';
import 'package:all_demos/aniCon.dart';
import 'package:all_demos/assetsload/home.dart';
import 'package:all_demos/pages/pageThree.dart';
import 'package:all_demos/pages/pageTwo.dart';
import 'package:all_demos/twnAni.dart';
import 'package:flutter/material.dart';

import 'pages/pageOne.dart';
import 'pages/utils/route_names.dart';
import 'pages/utils/routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: RouteName.pageOne,
    onGenerateRoute: Routes.generateRoute,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.lightBlue,
        body: GestureDetector(
          onTap: (){
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: Duration(seconds: 10),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
