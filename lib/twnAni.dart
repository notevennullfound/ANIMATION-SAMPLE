import 'package:flutter/material.dart';

class TwnAni extends StatefulWidget {
  const TwnAni({Key? key}) : super(key: key);

  @override
  State<TwnAni> createState() => _TwnAniState();
}

class _TwnAniState extends State<TwnAni> {
  double animationEnd = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                onEnd: () {
                  setState(() {
                    animationEnd = 1.0;
                  });
                },
                curve: Curves.bounceInOut,
                duration: Duration(seconds: 1),
                builder: (context, value, child) {
                  return Container(
                    child: Image.asset(
                      'assets/dash.png',
                      height: value,
                      width: value,
                    ),
                  );
                },
                tween: Tween<double>(begin: 100, end: 500),
              ),
              AnimatedOpacity(
                opacity: animationEnd,
                duration: Duration(seconds: 1),
                child: Text('Hello Developer...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
