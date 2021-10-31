import 'package:flutter/material.dart';

class BottomNavbarClipperRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width / 1.2 - 35, 0);
    path.quadraticBezierTo(size.width / 1.2 - 35, 36, size.width / 1.2, 36);
    path.quadraticBezierTo(size.width / 1.2 + 35, 36, size.width / 1.2 + 36, 0);
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