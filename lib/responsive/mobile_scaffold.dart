import 'package:flutter/material.dart';
import 'package:tasarimargem/Pointer/clipPath.dart';
import 'package:tasarimargem/controllers/Controller.dart';
import 'package:get/get.dart';
import 'package:tasarimargem/widget/CircleWidget.dart';
import 'package:tasarimargem/widget/ResponsiveWidet.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List itemler = [
      CirculeWidget(
        imageUrl:
            "https://www.shutterstock.com/image-vector/gamer-mascot-logo-streamer-esport-260nw-1683249331.jpg"
                .obs,
        indexItem: 0.obs,
        onTap: () {
          indexController!.index.value = 0;
          indexController!.selectedSayfaIndex.value = 0;
        },
      ),
      const SizedBox(
        height: 30,
      ),
      CirculeWidget(
          imageUrl:
              "https://media.istockphoto.com/id/1182383458/tr/vekt%C3%B6r/gamer-esport-maskotu-logo-tasar%C4%B1m.jpg?s=612x612&w=0&k=20&c=AjpWM3GkWSNl24Xb9E7h8dp7QmCdlYJm8EFf_9pylDU="
                  .obs,
          indexItem: 1.obs,
          onTap: () {
            indexController!.index.value = 1;
            indexController!.selectedSayfaIndex.value = 1;
          }),
      const SizedBox(height: 30),
      CirculeWidget(
          imageUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQF7bnTUsKlMLRaZG_AEx0MU8XCH9ZxcptiQ&usqp=CAU"
                  .obs,
          indexItem: 2.obs,
          onTap: () {
            indexController!.index.value = 2;
            indexController!.selectedSayfaIndex.value = 2;
          }),
      const SizedBox(height: 30),
      CirculeWidget(
          imageUrl:
              "https://media.istockphoto.com/id/1320799591/vector/game-on-neon-game-controller-or-joystick-for-game-console-on-blue-background.jpg?s=612x612&w=0&k=20&c=CbxRq6ctP5Ta1QLu18UMtvgJf4D-zFpTMm0Rz14_Gy0="
                  .obs,
          indexItem: 3.obs,
          onTap: () {
            indexController!.index.value = 3;
            indexController!.selectedSayfaIndex.value = 3;
          }),
      const SizedBox(height: 30),
      CirculeWidget(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJp5Yrs5nd6TH_19CH2sjXERog11DG5OAn5Q&usqp=CAU"
                .obs,
        indexItem: 4.obs,
        onTap: () {
          indexController!.index.value = 4;
          indexController!.selectedSayfaIndex.value = 4;
        },
      ),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF59479e),
        ),
        drawer:
            MenuResponsive(indexController: indexController, itemler: itemler),
        body: Obx(
          () => SizedBox(
            height: 753,
            child: indexController!.getRightPage(),
          ),
        ),
      ),
    );
  }
}
