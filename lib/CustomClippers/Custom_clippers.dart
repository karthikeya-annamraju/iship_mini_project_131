import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomClipperOne extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(0, size.height*(0.45/2));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*(0.45/2));
    path.quadraticBezierTo(size.width*(1/2), 0, 0, size.height*(0.45/2));
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class MyCustomClipperTwo extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(0, size.height*(0.55/2));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*(0.55/2));
    path.quadraticBezierTo(size.width*(1/2), 0, 0, size.height*(0.55/2));
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class MyCustomClipperThree extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(0, size.height*(0.65/2));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*(0.65/2));
    path.quadraticBezierTo(size.width*(1/2), 0, 0, size.height*(0.65/2));
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class MyTopClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    double H = size.height;
    double W = size.width;
    Path path = Path();
    path.moveTo(0, H*(4.5/5));
    path.quadraticBezierTo(W, H+(10), W, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
