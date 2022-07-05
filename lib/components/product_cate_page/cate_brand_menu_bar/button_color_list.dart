import 'package:flutter/material.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({
    Key? key,
    this.color,
    required this.radius,
  }) : super(key: key);
  final dynamic color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: SizedBox(
          width: radius * 2,
          height: radius * 2,
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              // side: BorderSide.none,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: color != Colors.white
                ? CircleAvatar(
                    backgroundColor: color,
                    radius: radius,
                  )
                : CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: radius,
                    child: CircleAvatar(
                      backgroundColor: color,
                      radius: radius - 1.5,
                    ),
                  ),
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonColor(
                radius: 17,
                color: Colors.white,
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFF969696),
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFF030303),
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFF0315FF),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonColor(
                radius: 17,
                color: Color(0xFFDC0647),
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFFFFF56A),
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFFF26E51),
              ),
              ButtonColor(
                radius: 17,
                color: Color(0xFF9A8777),
              ),
            ],
          )
        ],
      ),
    );
  }
}
