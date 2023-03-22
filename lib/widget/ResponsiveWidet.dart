import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasarimargem/Pointer/clipPath.dart';
import 'package:tasarimargem/controllers/Controller.dart';

class MenuResponsive extends StatelessWidget {
  const MenuResponsive({
    Key? key,
    required this.indexController,
    required this.itemler,
  }) : super(key: key);

  final IndexController? indexController;
  final List itemler;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
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
                    width: 243.4,
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
