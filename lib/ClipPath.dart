import 'package:flutter/material.dart';

class ClipPathClass extends StatefulWidget {
  const ClipPathClass({Key? key}) : super(key: key);

  @override
  State<ClipPathClass> createState() => _ClipPathClassState();
}

class _ClipPathClassState extends State<ClipPathClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ClipPath(
          clipper: myClipper(),
          child: Container(
            color: Colors.red,
            child: Center(child: Text('Clip Path'),),
            height: 400,
          ),
        ),
      ),
    );
  }
}


class myClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   double w = size.width;
   double h = size.height;
   final path = Path();
   path.moveTo(0, 200);
   path.moveTo(200, 0);
   path.lineTo(0, h);
   path.quadraticBezierTo(w * 0.5, h-100, w, h);
   path.lineTo(w, h);
   path.moveTo(0, 200);
   path.moveTo(200, 0);
   path.lineTo(w, 0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}