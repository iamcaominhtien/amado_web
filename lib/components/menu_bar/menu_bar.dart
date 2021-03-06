import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'extra_menu_button.dart';
import 'menu_bar_function_button.dart';
import 'menu_bar_main_button.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
    this.drawer = false,
  }) : super(key: key);
  final bool drawer;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.maxWidth.toString());
        return Padding(
          padding: EdgeInsets.only(
              top: drawer == false ? 30 : 0,
              bottom: 30,
              left: constraints.maxWidth > 300 ? 60 : 30,
              right: constraints.maxWidth > 300 ? 60 : 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (drawer == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              TextButton(
                child: Image.asset('assets/core_img/logo.png'),
                onPressed: () => Navigator.pushNamed(context, "/"),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  MenuBarMainButton(label: 'home'),
                  MenuBarMainButton(label: 'shop'),
                  MenuBarMainButton(label: 'product'),
                  MenuBarMainButton(label: 'cart'),
                  MenuBarMainButton(label: 'checkout'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MenuBarFuncButton(
                      color: const Color(0xFFFBB710),
                      label: "%Discount%",
                      onPressed: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  MenuBarFuncButton(
                      color: const Color(0xFF131212),
                      label: 'New this week',
                      onPressed: () {}),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ExtraMenuBarButton(label: 'cart (0)', img: 'cart.png'),
                  ExtraMenuBarButton(label: 'favourite', img: 'favorites.png'),
                  ExtraMenuBarButton(label: 'search', img: 'search.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: IconButton(
                      splashRadius: 8.5,
                      padding: const EdgeInsets.all(0),
                      hoverColor: Colors.yellow,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.pinterest,
                        size: 17,
                      ),
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      splashRadius: 8.5,
                      hoverColor: Colors.yellow,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        size: 17,
                      ),
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      splashRadius: 8.5,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        size: 17,
                      ),
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      splashRadius: 8.5,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
