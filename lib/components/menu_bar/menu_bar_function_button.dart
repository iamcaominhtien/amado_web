import 'package:flutter/material.dart';

class MenuBarFuncButton extends StatelessWidget {
  const MenuBarFuncButton({
    Key? key,
    required this.color,
    required this.label,
    this.onPressed,
  }) : super(key: key);
  final Color color;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return Material(
          color: color,
          child: MaterialButton(
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: p1.maxWidth > 300 ? 17 : 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
