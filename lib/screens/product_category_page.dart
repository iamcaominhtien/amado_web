import 'package:amado_web/components/menu_bar/menu_bar.dart';
import 'package:flutter/material.dart';
import '../components/body_page.dart';
import '../components/discount.dart';
import '../components/foot_page.dart';
import '../components/product_cate_page/cate_brand_menu_bar/cate_brand_menu_bar.dart';
import '../components/product_cate_page/product_cate_list_page/product_cate_list_page.dart';
import '../services/responsive.dart';

class ProductCatePage extends StatelessWidget {
  const ProductCatePage({Key? key}) : super(key: key);
  static String id = "product-cate-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Body
            BodyPage(
              indexPage: false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 1000,
                          child: MenuBar(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: const Color(0xFFFAFAFA),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 1300,
                            child: CateBrandMenuBar(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: Responsive.isDesktop(context)
                        ? 7
                        : Responsive.isTabletLargest(context)
                            ? 4
                            : 3,
                    child: const ProductCateListPage(),
                  ),
                ],
              ),
            ),
            //Discount
            const Discount(),
            //FootPage
            const FootPage(),
          ],
        ),
      ),
    );
  }
}
