import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/product_img/product${index + 1}.jpg',
          width: double.infinity,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          width: 80,
          color: Colors.orange,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$180',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 23,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
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
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Modern chair',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.shopping_cart,
              size: 23,
            ),
          ],
        )
      ],
    );
  }
}
