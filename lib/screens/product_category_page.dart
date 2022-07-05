import 'package:amado_web/components/menu_bar/menu_bar.dart';
import 'package:flutter/material.dart';
import '../components/body_page.dart';
import '../components/discount.dart';
import '../components/foot_page.dart';
import '../components/product_cate_page/cate_brand_menu_bar/cate_brand_menu_bar.dart';
import '../components/product_cate_page/product_cate_list_page/product_cate_list_page.dart';
import '../services/responsive.dart';

class ProductCatePage extends StatefulWidget {
  const ProductCatePage({Key? key}) : super(key: key);
  static String id = "product-cate-page";

  @override
  State<ProductCatePage> createState() => _ProductCatePageState();
}

class _ProductCatePageState extends State<ProductCatePage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          drawer: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 1200,
              maxWidth: 300,
            ),
            child: ListView(
              controller: ScrollController(),
              children: [
                Container(
                  color: Colors.white,
                  height: 800,
                  child: const MenuBar(drawer: true),
                ),
              ],
            ),
          ),
          key: _scaffoldState,
          extendBody: true,
          appBar: constraints.maxWidth < 692
              ? AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 7,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () => Navigator.pushNamed(context, '/'),
                        child: Image.asset(
                          'assets/core_img/logo.png',
                          height: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _scaffoldState.currentState?.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  // leading: Image.asset(
                  //   'assets/core_img/logo.png',
                  //   height: 30,
                  // ),
                  // actions: [
                  //
                  // ],
                )
              : null,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (constraints.maxWidth <= 375)
                  const SizedBox(
                    height: 40,
                  ),

                //Body
                BodyPage(
                  indexPage: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (constraints.maxWidth >= 692)
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
                      if (constraints.maxWidth >= 890)
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
                                : constraints.maxWidth <= 692
                                    ? 1
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
      },
    );
  }
}
