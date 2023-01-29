import 'package:all_demos/pages/pageThree.dart';
import 'package:flutter/material.dart';

import 'utils/route_names.dart';

class PageTwo extends StatefulWidget {

  dynamic data;

  PageTwo({Key? key,required this.data}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.data!['name'].toString())),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteName.pageThree);
        },
        child: Center(
          child: Text(
            'PageTwo' + widget.data['age'].toString(),
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
