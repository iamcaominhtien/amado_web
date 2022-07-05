import 'package:amado_web/screens/example.dart';
import 'package:amado_web/screens/index.dart';
import 'package:amado_web/screens/product_category_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amado website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        ExamplePage.id: (context) => const ExamplePage(),
        ProductCatePage.id: (context) => const ProductCatePage(),
      },
      initialRoute: '/',
      // home: const HomePage(),
    );
  }
}
