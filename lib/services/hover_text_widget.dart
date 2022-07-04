import "package:hovering/hovering.dart";
import 'package:flutter/material.dart';

class HoverText extends StatelessWidget {
  const HoverText({Key? key, this.color = Colors.yellow, required this.child})
      : super(key: key);
  final dynamic color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HoverContainer(
      hoverDecoration: BoxDecoration(
        color: color,
      ),
      child: child,
    );
  }
}
