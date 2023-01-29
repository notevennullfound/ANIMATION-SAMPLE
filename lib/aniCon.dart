import 'dart:math';

import 'package:flutter/material.dart';

class AniCon extends StatefulWidget {
  const AniCon({Key? key}) : super(key: key);

  @override
  State<AniCon> createState() => _AniConState();
}

class _AniConState extends State<AniCon> {
  double _height = 50;
  double _width = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedContainer(
            height: _height,
            width: _width,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
                color: _color, borderRadius: borderRadiusGeometry),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            for(int i=0;i<=5;i++) {
              print(i);
              await _onPressed();
            }
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }

  Future _onPressed() async {
    setState(() {
      final random = Random();

      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);

      borderRadiusGeometry =
          BorderRadius.circular(random.nextInt(100).toDouble());
    });
    await Future.delayed(Duration(seconds: 1)).then((value) => null);
  }
}
