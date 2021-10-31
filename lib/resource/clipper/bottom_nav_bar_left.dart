import 'package:flutter/material.dart';

class BottomNavbarClipperLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width / 7 - 28, 0);
    path.quadraticBezierTo(size.width / 7 - 28, 33, size.width / 7, 33);
    path.quadraticBezierTo(size.width / 7 + 28, 33, size.width / 7 + 28, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}