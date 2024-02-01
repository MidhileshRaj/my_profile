import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_webapp/view_model/appbar_navigation_controller.dart';

class MyAppBarNavItem extends GetView<AppbarNavigationController> {
  final int index;
  final String item;
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerExitEvent)? onExit;

  // Function(PointerHoverEvent)? onHover;
  const MyAppBarNavItem(
      {super.key,
        required this.onEnter,
        required this.onExit,
        required this.index,
        required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(onEnter: onEnter, onExit: onExit, child: Text(item)),
        AnimatedOpacity(
            opacity: controller.selectedIndex.value == index
                ? 1.0
                : 0.0,
            duration: const Duration(milliseconds: 300),
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Transform.translate(
                offset: Offset(controller.selectedIndex.value == index ? 2.0 : 5.0, 2.0),
                child: const Icon(Icons.arrow_back),
              ),
            ),)
      ],
    );
  }
}