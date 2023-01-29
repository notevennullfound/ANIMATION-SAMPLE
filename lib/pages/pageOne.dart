import 'package:all_demos/pages/pageTwo.dart';
import 'package:flutter/material.dart';

import 'utils/route_names.dart';

class PageOne extends StatefulWidget {


  final String name;
  final int age;

  const PageOne({Key? key, required this.name, required this.age})
      : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('PageOne' + widget.name + ' ' + widget.age.toString())),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.pageTwo,
            arguments: {
              'name':'DON',
              'age':150
            });
          },
          child: Text(
            'PageOne',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
