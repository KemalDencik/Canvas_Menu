import 'package:flutter/material.dart';

class Clippath extends StatefulWidget {
  const Clippath({
    super.key,
  });

  @override
  State<Clippath> createState() => _ClippathState();
}

class _ClippathState extends State<Clippath> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
    );
  }
}

//circle avatarlarımın bulunduğu alanın şekli
class MyClipper extends CustomClipper<Path> {
  MyClipper();

  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width, 0);
    path0.quadraticBezierTo(size.width * 1.0215000, size.height * 0.0165339,
        size.width * 0.9880000, size.height * 0.0332005);
    path0.cubicTo(
        size.width * 1.0070000,
        size.height * 0.0628154,
        size.width * 0.6830000,
        size.height * 0.0802125,
        size.width * 0.5000000,
        size.height * 0.0926959);
    path0.cubicTo(
        size.width * 0.3525000,
        size.height * 0.1025232,
        size.width * 0.1460000,
        size.height * 0.1124170,
        size.width * 0.0735000,
        size.height * 0.1357902);
    path0.cubicTo(
        size.width * 0.0710000,
        size.height * 0.2427623,
        size.width * 0.0675000,
        size.height * 0.4712483,
        size.width * 0.0680000,
        size.height * 0.5774236);
    path0.cubicTo(
        size.width * 0.1130000,
        size.height * 0.6047145,
        size.width * 0.3765000,
        size.height * 0.6154316,
        size.width * 0.5634000,
        size.height * 0.6287649);
    path0.cubicTo(
        size.width * 0.7094000,
        size.height * 0.6405179,
        size.width * 0.9767000,
        size.height * 0.6516733,
        size.width * 0.9898000,
        size.height * 0.6705445);
    path0.quadraticBezierTo(size.width * 1.0203000, size.height * 0.6868127,
        size.width, size.height * 0.7954847);
    path0.lineTo(size.width * 0.9900000, size.height * 0.9986720);
    path0.lineTo(size.width * 0.0100000, size.height * 0.9986720);
    path0.lineTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
