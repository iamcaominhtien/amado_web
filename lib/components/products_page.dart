import 'package:amado_web/services/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hovering/hovering.dart';

import '../screens/product_category_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<String> listImg = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 20),
      child: MasonryGridView.count(
        crossAxisCount: Responsive.isDesktop(context)
            ? 3
            : Responsive.isMobile(context)
                ? 1
                : 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        itemCount: 9,
        itemBuilder: (context, index) {
          return MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, ProductCatePage.id);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: HoverWidget(
                onHover: (event) {
                  debugPrint(index.toString());
                },
                hoverChild: Stack(
                  children: [
                    kIsWeb
                        ? Image.asset('bg_img/${index + 1}.jpg',
                            color: Colors.grey.withOpacity(0.8),
                            colorBlendMode: BlendMode.modulate)
                        : Image.asset('assets/bg_img/${index + 1}.jpg',
                            color: Colors.grey.withOpacity(0.8),
                            colorBlendMode: BlendMode.modulate),
                    // Image.asset('bg_img/${index + 1}.jpg',
                    //     color: Colors.grey.withOpacity(0.8),
                    //     colorBlendMode: BlendMode.modulate),
                    Positioned(
                      top: 40,
                      left: 40,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 4,
                            color: Colors.orange,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "From \$180",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Modern Chair",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    kIsWeb
                        ? Image.asset('bg_img/${index + 1}.jpg')
                        : Image.asset('assets/bg_img/${index + 1}.jpg'),
                    Positioned(
                      top: 40,
                      left: 40,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 4,
                            color: Colors.orange,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "From \$180",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Modern Chair",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
