import 'package:flutter/material.dart';


class LoadAssets extends StatefulWidget {
  const LoadAssets({Key? key}) : super(key: key);

  @override
  State<LoadAssets> createState() => _LoadAssetsState();
}

class _LoadAssetsState extends State<LoadAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Operations'),
      ),
      body: SafeArea(child: Column(children: [
        Expanded(child : Image.asset('assets/dash.png')),
        Expanded(child : Image.asset('assets/dash.png')),
      ]),
        
      ),
    );
  }
}
