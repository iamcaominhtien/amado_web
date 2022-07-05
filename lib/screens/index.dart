import 'package:flutter/material.dart';
import '../components/body_page.dart';
import '../components/discount.dart';
import '../components/foot_page.dart';
import '../components/menu_bar/menu_bar.dart';
import '../services/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldState,
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
          appBar: (Responsive.isMobile(context) ||
                  Responsive.isTabletSmallest(context))
              ? AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 7,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/core_img/logo.png',
                        height: 30,
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
              children: const [
                //Body
                BodyPage(),
                //Discount
                Discount(),
                //FootPage
                FootPage(),
              ],
            ),
          ),
        );
      },
    );
  }
}
