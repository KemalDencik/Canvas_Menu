import 'package:flutter/material.dart';

class PointerPath extends StatelessWidget {
  const PointerPath({super.key});
//sol menudeki cicleavatarlarımın seçildiğini gösteren border şeklim
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 8,
      decoration: const BoxDecoration(color: Colors.white),
      child: ClipPath(
        clipper: PointerClipper(),
      ),
    );
  }
}

class PointerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(size.width * 0.5000000, 0);
    path1.quadraticBezierTo(size.width * 0.8095000, size.height * 0.2814000,
        size.width * 0.8982000, size.height * 0.5000000);
    path1.quadraticBezierTo(size.width * 0.8040000, size.height * 0.7006000,
        size.width * 0.5000000, size.height);
    path1.quadraticBezierTo(size.width * 0.4463000, size.height * 0.7042000,
        size.width * 0.4500000, size.height * 0.5000000);
    path1.quadraticBezierTo(size.width * 0.4409000, size.height * 0.2939000,
        size.width * 0.5000000, 0);
    path1.close();

    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
