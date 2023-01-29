import 'package:all_demos/pages/pageOne.dart';
import 'package:flutter/material.dart';

import 'utils/route_names.dart';

class PageThree extends StatefulWidget {



  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageThree')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.pageOne);
            },
          child: Text(
            'PageThree',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
