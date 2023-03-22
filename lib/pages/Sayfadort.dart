import 'package:flutter/material.dart';

class Sonsayfa extends StatelessWidget {
  const Sonsayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        color: Colors.red,
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
