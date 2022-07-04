import 'package:flutter/material.dart';

class ExtraMenuBarButton extends StatelessWidget {
  const ExtraMenuBarButton({
    Key? key,
    required this.img,
    required this.label,
  }) : super(key: key);
  final String img;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Image.asset('assets/core_img/$img'),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
                // decoration: TextDecoration(un)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
