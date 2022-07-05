import 'package:amado_web/services/hover_text_widget.dart';
import 'package:flutter/material.dart';

class MenuBarMainButton extends StatelessWidget {
  const MenuBarMainButton({
    Key? key,
    required this.label,
    this.colorText = Colors.black,
    this.isMenuBar = true,
  }) : super(key: key);
  final String label;
  final dynamic colorText;
  final bool isMenuBar;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        // debugPrint("Menubarmain: ${p1.maxWidth}");
        return HoverText(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: isMenuBar ? 10 : 0,
              right: isMenuBar ? 0 : 5,
              left: isMenuBar ? 0 : 5,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                label.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: colorText,
                  fontSize: p1.maxWidth > 300 ? 17 : 15,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
