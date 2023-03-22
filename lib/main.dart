import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tasarimargem/responsive/desktop.dart';
import 'package:tasarimargem/responsive/mobile_scaffold.dart';
import 'package:tasarimargem/responsive/responsive.dart';
import 'package:tasarimargem/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: Barr(),
        tabletScaffold: TabletScaffold(),
      ),
    );
  }
}
