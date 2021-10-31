import 'package:flutter/material.dart';


class CircleImage extends StatelessWidget {
  const CircleImage({ Key? key, this.height = 60, this.width = 60, this.image }) : super(key: key);
  final double? height;
  final double? width;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(image!),fit: BoxFit.cover
        )
      ),
      
    );
  }
}