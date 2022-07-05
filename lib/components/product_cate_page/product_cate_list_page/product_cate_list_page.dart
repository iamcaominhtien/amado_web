import 'package:amado_web/components/product_cate_page/product_cate_list_page/page_navigation.dart';
import 'package:amado_web/services/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'list_view_product_card.dart';
import 'my_dropdown_menu.dart';
import 'product_card.dart';

bool listViewProduct = false;

class ProductCateListPage extends StatefulWidget {
  const ProductCateListPage({Key? key}) : super(key: key);

  @override
  State<ProductCateListPage> createState() => _ProductCateListPageState();
}

class _ProductCateListPageState extends State<ProductCateListPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(
              top: constraints.maxWidth > 375 ? 70 : 15,
              left: 15,
              right: Responsive.isDesktop(context)
                  ? 100
                  : constraints.maxWidth <= 375
                      ? 15
                      : 50,
              bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'SHOWING 1-8 0F 25',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                mainAxisAlignment: Responsive.isDesktop(context)
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyButtonIcon(
                        onPressed: () {
                          setState(() {
                            listViewProduct = false;
                          });
                        },
                        isClicked: true,
                        child: Image.asset(
                          'assets/icon/four_square.png',
                          color: Colors.white,
                          width: 20,
                        ),
                      ),
                      MyButtonIcon(
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // debugPrint("Click");
                          setState(() {
                            listViewProduct = true;
                          });
                        },
                      )
                    ],
                  ),
                  if (!Responsive.isDesktop(context))
                    const SizedBox(
                      height: 20,
                    ),
                  Flex(
                    direction: constraints.maxWidth > 394
                        ? Axis.horizontal
                        : Axis.vertical,
                    mainAxisAlignment: constraints.maxWidth > 394
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: constraints.maxWidth > 394
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.stretch,
                    children: const [
                      MyDropDownMenu(
                        label: 'Sort by',
                        item: [12, 24, 48, 96],
                      ),
                      SizedBox(
                        width: 15,
                        height: 10,
                      ),
                      MyDropDownMenu(
                        label: 'Sort by',
                        item: ['Date', 'Newest', 'Popular'],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              !listViewProduct
                  ? Expanded(
                      child: AlignedGridView.count(
                        crossAxisCount: Responsive.isDesktop(context) ||
                                (580 < constraints.maxWidth &&
                                    constraints.maxWidth < 692)
                            ? 2
                            : 1,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 20,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          debugPrint(listViewProduct.toString());
                          return ProductCart(index: index);
                        },
                      ),
                    )
                  : const ListViewProductCard(),
              if (constraints.maxWidth < 890)
                const SizedBox(
                  height: 20,
                ),
              const PageNavigation(),
            ],
          ),
        );
      },
    );
  }
}
