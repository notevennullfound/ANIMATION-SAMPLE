import 'package:flutter/material.dart';

class ExpAniController extends StatefulWidget {
  const ExpAniController({Key? key}) : super(key: key);

  @override
  State<ExpAniController> createState() => _ExpAniControllerState();
}

class _ExpAniControllerState extends State<ExpAniController>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  double border = 1;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 15))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(

            ),
            GestureDetector(
              onTap: () {
                if (animationController.isAnimating) {
                  animationController.stop();
                } else {
                  animationController.repeat();
                }
              },
              child: RotationTransition(
                  turns: animationController,
                  alignment: Alignment.center,
                  child: Center(
                    child: Image.asset(
                      'assets/dash.png',
                      height: 250,
                      width: 250,
                    ),
                  )),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  border = 5;
                });
              },
              child: Text('Click me'),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(width: border),
                  animationDuration: Duration(seconds: 2)),
            )
          ],
        ),
      ),
    );
  }
}
