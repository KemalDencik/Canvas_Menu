import 'package:flutter/material.dart';
import 'package:tasarimargem/Pointer/clipPath.dart';
import 'package:tasarimargem/controllers/Controller.dart';
import 'package:get/get.dart';
import 'package:tasarimargem/widget/CircleWidget.dart';

class Barr extends StatefulWidget {
  const Barr({Key? key}) : super(key: key);
  @override
  State<Barr> createState() => _BarrState();
}

class _BarrState extends State<Barr> {
  IndexController? indexController;
  Color splash = const Color(0xFF2D2655);
  @override
  void initState() {
    super.initState();
    indexController = Get.put(IndexController(), tag: "index");
  }

  @override
  Widget build(BuildContext context) {
    //circle avatarlarım

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 753,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Color(0xFF4B447C), Color(0xFF5A5180)],
                          tileMode: TileMode.repeated,
                        ),
                      ),

                      //circle avatarımın bulunduğu alan
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          alignment: Alignment.topLeft,
                          width: 60,
                          height: 753,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xFF59479e),
                                Color(0xFF836FAF),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Obx(
                  () => Container(
                    alignment: Alignment.topLeft,
                    width: 250,
                    height: 753,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Color(0xFF564C8C), Color(0xFF786896)],
                      tileMode: TileMode.mirror,
                    )),
                    //menulerim

                    child: indexController!.getPage(),
                  ),
                ),
                Obx(
                  () => Expanded(
                    child: SizedBox(
                      height: 753,
                      child: indexController!.getRightPage(),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Column(
                children: [
                  const Opacity(
                    opacity: 0.7,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXQ08g2uI7XskFyHtGggLPHfKOSY6W1ywuFg&usqp=CAU"),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(height: 30),
                  //circle avatarımı çağırdığım kısım

                  SizedBox(
                    height: 753,
                    width: 60,
                    child: ListView.builder(
                      itemBuilder: (context, index) => itemler[index],
                      itemCount: itemler.length,
                      shrinkWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
