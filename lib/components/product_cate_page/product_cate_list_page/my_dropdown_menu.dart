import 'package:flutter/material.dart';

class MyDropDownMenu extends StatefulWidget {
  const MyDropDownMenu({
    Key? key,
    required this.item,
    required this.label,
  }) : super(key: key);
  final List item;
  final String label;

  @override
  State<MyDropDownMenu> createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F7FA),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 15,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 120,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF9595AB),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            DropdownButton(
              isDense: true,
              elevation: 0,
              value: widget.item[0],
              items: widget.item
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {},
              underline: const SizedBox(),
              icon: const Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButtonIcon extends StatelessWidget {
  const MyButtonIcon({
    Key? key,
    required this.child,
    this.onPressed,
    this.isClicked = false,
  }) : super(key: key);
  final Widget child;
  final Function()? onPressed;
  final bool isClicked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Material(
        color: isClicked ? Colors.orange : Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide.none,
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: child,
          ),
        ),
      ),
    );
  }
}
