import 'package:flutter/material.dart';

class BrandList extends StatefulWidget {
  const BrandList({Key? key}) : super(key: key);

  @override
  State<BrandList> createState() => _BrandListState();
}

class _BrandListState extends State<BrandList> {
  List<Map<String, dynamic>> brands = [
    {'Amado': false},
    {'Ikea': false},
    {'Furniture Inc': false},
    {'The factory': false},
    {'Artdeco': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: brands.map((brand) {
          String key = brand.keys.first;
          return Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () {},
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Checkbox(
                        value: brand[key],
                        onChanged: (value) {
                          setState(() {
                            brand[key] = value;
                          });
                        }),
                    Flexible(
                      child: Text(
                        key,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9595A1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
