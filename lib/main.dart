import 'package:flutter/material.dart';
import 'package:myapp/pages/detail.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/product.dart';
import 'package:myapp/pages/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/detail': (context) => const DetailPage(),
        '/product': (context) => const ProductPage(),
        '/product_detail': (context) => const ProductDetailPage()
      },
      home: HomePage(),
    );
  }
}
