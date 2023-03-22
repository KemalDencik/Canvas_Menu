import 'package:flutter/material.dart';

class Sayfaiki extends StatelessWidget {
  const Sayfaiki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        color: Colors.orange,
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
