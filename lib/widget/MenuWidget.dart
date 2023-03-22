import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/Controller.dart';

class MenuWidget extends StatefulWidget {
  final IconData icon;
  final Function() onTap;
  final String text;
  final int index;

  final Color iconcolor;
  const MenuWidget({
    Key? key,
    required this.icon,
    required this.iconcolor,
    required this.text,
    required this.onTap,
    required this.index,
  }) : super(key: key);
  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

//menumde bulunan butonların widgeti

class _MenuWidgetState extends State<MenuWidget> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  Color splash = const Color.fromARGB(255, 10, 1, 56);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: widget.index == indexController!.gecis.value
                ? splash.withOpacity(0.6)
                : Colors.transparent,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: const Color.fromARGB(255, 12, 18, 68),
              hoverColor: splash,
              onTap: widget.onTap,
              child: SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 20,
                        shadows: const [
                          Shadow(
                              color: Color.fromARGB(255, 243, 89, 89),
                              blurRadius: 4)
                        ],
                      ),
                    ),
                    Text(
                      widget.text,
                      style: const TextStyle(
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(255, 243, 89, 89),
                                blurRadius: 4),
                          ],
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
