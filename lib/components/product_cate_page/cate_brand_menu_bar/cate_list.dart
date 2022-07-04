import 'package:flutter/material.dart';

class CateList extends StatelessWidget {
  const CateList({
    Key? key,
    required this.cates,
  }) : super(key: key);

  final List<String> cates;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: cates
            .map((cate) => Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 18),
                  child: TextButton(
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        cate,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9595A1),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
