import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasarimargem/pages/Sayfabir.dart';
import 'package:tasarimargem/pages/Sayfadort.dart';
import 'package:tasarimargem/pages/explore.dart';
import 'package:tasarimargem/pages/sayfauc.dart';
import '../pages/sayfaiki.dart';

class IndexController extends GetxController {
  RxInt index = 0.obs;
  RxInt selectedSayfaIndex = 0.obs;
  RxInt selectedRightIndex = 0.obs;
  RxInt gecis = 0.obs;

  List<Widget> sayfa = [
    const SagPanel(),
    const Ilksayfa(),
    const Sayfaiki(),
    const Sayfauc(),
    const Sonsayfa(),
  ];
  List<Widget> menu = [
    Container(
      color: Colors.amber,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.black,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.pink,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.purple,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.cyan,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
    Container(
      color: Colors.indigo,
      child: const Center(
        child: Text("® Argem Bilgi Teknolojileri"),
      ),
    ),
  ];
  Widget getPage() {
    return sayfa[selectedSayfaIndex.value];
  }

  Widget getRightPage() {
    return menu[selectedRightIndex.value];
  }
}
//circleavatar widgetinin controllerı 
