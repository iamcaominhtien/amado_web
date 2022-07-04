import 'package:flutter/material.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({
    Key? key,
    this.color,
  }) : super(key: key);
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: color == Colors.white
            ? Border.all(
                color: Colors.grey, //color of border
                width: 1, //width of border
              )
            : null,
        shape: BoxShape.circle,
      ),
      child: Material(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
          side: BorderSide.none,
        ),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide.none,
          ),
          onPressed: () {},
          child: CircleAvatar(
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}

class ButtonColorList extends StatelessWidget {
  const ButtonColorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 7,
        mainAxisSpacing: 14,
        crossAxisCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ButtonColor(
            color: Colors.white,
          ),
          ButtonColor(
            color: Color(0xFF969696),
          ),
          ButtonColor(
            color: Color(0xFF030303),
          ),
          ButtonColor(
            color: Color(0xFF0315FF),
          ),
          ButtonColor(
            color: Color(0xFFDC0647),
          ),
          ButtonColor(
            color: Color(0xFFFFF56A),
          ),
          ButtonColor(
            color: Color(0xFFF26E51),
          ),
          ButtonColor(
            color: Color(0xFF9A8777),
          ),
        ],
      ),
    );
  }
}
