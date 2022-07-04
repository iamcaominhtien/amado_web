import 'package:amado_web/components/products_page.dart';
import 'package:flutter/material.dart';
import '../services/responsive.dart';
import 'menu_bar/menu_bar.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({
    Key? key,
    this.indexPage = true,
    this.child,
  }) : super(key: key);
  final bool indexPage;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: indexPage ? 1150 : 2000),
      child: Container(
        color: Colors.white,
        child: child ??
            Row(
              children: [
                //MenuBar
                if (!(Responsive.isMobile(context) ||
                    Responsive.isTabletSmallest(context)))
                  const Expanded(
                    flex: 2,
                    child: MenuBar(),
                  ),

                //ProductPage
                Expanded(
                  flex: Responsive.isDesktop(context)
                      ? 7
                      : Responsive.isTabletLargest(context)
                          ? 5
                          : 4,
                  child: const ProductsPage(),
                ),
              ],
            ),
      ),
    );
  }
}
