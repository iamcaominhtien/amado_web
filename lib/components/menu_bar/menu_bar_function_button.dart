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
    return Material(
      color: color,
      child: MaterialButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
