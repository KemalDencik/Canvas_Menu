import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasarimargem/controllers/Controller.dart';
import 'package:tasarimargem/widget/MenuWidget.dart';

class SagPanel extends StatefulWidget {
  const SagPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<SagPanel> createState() => _SagPanelState();
}

class _SagPanelState extends State<SagPanel> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 13, 0, 10),
          child: Text(
            "EXPLORE",
            style: TextStyle(
                letterSpacing: 4,
                // decorationColor: Colors.white,
                // decoration: TextDecoration.underline,
                // decorationStyle: TextDecorationStyle.double,
                // decorationThickness: 2,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    color: Color.fromARGB(255, 212, 7, 7),
                  ),
                ],
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
        //sağ menüm

        const Divider(
          color: Colors.white,
          height: 2,
          thickness: 2,
        ),
        MenuWidget(
          icon: Icons.home,
          text: "Home",
          iconcolor: Colors.white,
          index: 0,
          onTap: () {
            indexController!.gecis.value = 0;
            indexController!.selectedRightIndex.value = 0;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.music_note,
          text: "Music",
          iconcolor: Colors.white,
          index: 1,
          onTap: () {
            indexController!.gecis.value = 1;
            indexController!.selectedRightIndex.value = 1;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.games_outlined,
          text: "Gaming",
          iconcolor: Colors.white,
          index: 2,
          onTap: () {
            indexController!.gecis.value = 2;
            indexController!.selectedRightIndex.value = 2;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.cast_for_education_rounded,
          text: "Education",
          iconcolor: Colors.white,
          index: 3,
          onTap: () {
            indexController!.gecis.value = 3;
            indexController!.selectedRightIndex.value = 3;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.science_outlined,
          text: "Science Hubs",
          iconcolor: Colors.white,
          index: 4,
          onTap: () {
            indexController!.gecis.value = 4;
            indexController!.selectedRightIndex.value = 4;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.play_circle_outline_outlined,
          text: "Entertainment",
          iconcolor: Colors.white,
          index: 5,
          onTap: () {
            indexController!.gecis.value = 5;
            indexController!.selectedRightIndex.value = 5;
            Get.back();
          },
        ),
        MenuWidget(
          icon: Icons.bookmark_add_outlined,
          text: "Student Hubs",
          iconcolor: Colors.white,
          index: 6,
          onTap: () {
            indexController!.gecis.value = 6;
            indexController!.selectedRightIndex.value = 6;
            Get.back();
          },
        ),
      ],
    );
  }
}
