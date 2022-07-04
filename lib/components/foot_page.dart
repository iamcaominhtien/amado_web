import 'package:amado_web/services/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_bar/menu_bar_main_button.dart';

class FootPage extends StatelessWidget {
  const FootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: const Color(0xFF252525),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
      child: Flex(
        direction: !Responsive.isTabletLargest(context)
            ? Axis.horizontal
            : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: !Responsive.isTabletLargest(context) ? 3 : 4,
            child: Column(
              crossAxisAlignment: !Responsive.isTabletLargest(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: Image.asset("assets/core_img/logo2.png")),
                const SizedBox(
                  height: 15,
                ),
                Flexible(
                  child: Text(
                    "Copyright ©2022 All rights reserved | This template is made with  by Colorlib & Re-distributed by Themewagon",
                    style: const TextStyle(
                      color: Colors.grey,
                      height: 1.8,
                      fontSize: 13,
                    ),
                    textAlign: !Responsive.isTabletLargest(context)
                        ? TextAlign.start
                        : TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: !Responsive.isTabletLargest(context) ? 7 : 1,
            child: !Responsive.isTabletSmallest(context)
                ? Row(
                    mainAxisAlignment: !Responsive.isTabletLargest(context)
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                    children: const [
                      MenuBarMainButton(
                        label: "home",
                        colorText: Colors.white,
                        isMenuBar: false,
                      ),
                      MenuBarMainButton(
                        label: "shop",
                        colorText: Colors.white,
                        isMenuBar: false,
                      ),
                      MenuBarMainButton(
                        label: "product",
                        colorText: Colors.white,
                        isMenuBar: false,
                      ),
                      MenuBarMainButton(
                        label: "cart",
                        colorText: Colors.white,
                        isMenuBar: false,
                      ),
                      MenuBarMainButton(
                        label: "checkout",
                        colorText: Colors.white,
                        isMenuBar: false,
                      ),
                    ],
                  )
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
