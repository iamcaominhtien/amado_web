import 'package:flutter/material.dart';
import '../components/body_page.dart';
import '../components/discount.dart';
import '../components/foot_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  }
}
