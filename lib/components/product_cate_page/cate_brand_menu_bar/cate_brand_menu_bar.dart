import 'package:amado_web/components/product_cate_page/cate_brand_menu_bar/brand_list.dart';
import 'package:flutter/material.dart';

import 'button_color_list.dart';
import 'cate_list.dart';

class CateBrandMenuBar extends StatefulWidget {
  const CateBrandMenuBar({Key? key}) : super(key: key);

  @override
  State<CateBrandMenuBar> createState() => _CateBrandMenuBarState();
}

class _CateBrandMenuBarState extends State<CateBrandMenuBar> {
  List<String> cates = [
    'Chairs',
    'Beds',
    'Accessories',
    'Furniture',
    'Home Deco',
    'Dressings',
    'Tables'
  ];

  RangeValues priceRange = const RangeValues(10, 1000);

  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 17,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Categories
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            CateList(cates: cates),

            //Brands
            const Text(
              "Brands",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const BrandList(),

            //Color Button
            const Text(
              "Colors",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            const ButtonColorList(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Price",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //Price range
            Theme(
              data: ThemeData(
                sliderTheme: SliderThemeData(
                  mouseCursor:
                      MaterialStateProperty.all(SystemMouseCursors.click),
                  overlayShape: SliderComponentShape.noOverlay,
                  thumbColor: const Color(0xFFFBB710),
                  trackHeight: 1,
                  activeTrackColor: const Color(0xFFFBB710),
                  // thumbShape:
                  //     RoundSliderThumbShape(enabledThumbRadius: 15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RangeSlider(
                  values: priceRange,
                  onChanged: (value) {
                    setState(() {
                      priceRange = value;
                    });
                  },
                  max: 1000,
                  min: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '\$${priceRange.start.toInt()} - \$${priceRange.end.toInt()}',
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
