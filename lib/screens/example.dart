import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);
  static String id = 'example_page';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 1500,
        ),
        child: Row(
          children: [
            Flexible(
              child: SizedBox(
                width: 700,
                height: 500,
                child: Row(
                  children: [
                    Expanded(
                      flex: 13,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
