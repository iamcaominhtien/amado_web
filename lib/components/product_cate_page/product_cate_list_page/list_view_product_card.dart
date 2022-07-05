import 'package:flutter/material.dart';

class ListViewProductCard extends StatelessWidget {
  const ListViewProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              child: Row(
                children: [
                  Image.asset(
                    'assets/product_img/product${index + 1}.jpg',
                    height: 200,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Modern chair',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '\$180',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        hoverColor: Colors.yellow,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.green,
                          size: 28,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: 6),
    );
  }
}
