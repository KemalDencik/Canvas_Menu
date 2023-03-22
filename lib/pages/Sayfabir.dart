import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ilksayfa extends StatelessWidget {
  const Ilksayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        color: Colors.blue,
        child: Column(
          children: const [
            Spacer(),
            Text("® Argem Bilgi Teknolojileri"),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
