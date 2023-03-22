import 'package:flutter/material.dart';

class Sayfauc extends StatelessWidget {
  const Sayfauc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        color: Colors.amber,
        child: Column(
          children: const [
            Spacer(),
            Text("® Argem Bilgi Teknolojileri "),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
