import 'package:flutter/material.dart';
import 'package:myapp/models/product.dart';
import 'package:myapp/pages/product_detail.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Product> productList = [
    Product(name: 'Product 1', price: 10),
    Product(name: 'Product 2', price: 20),
    Product(name: 'Product 3', price: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>
              //         ProductDetailPage(product: productList[index]),
              //   ),
              // );
              Navigator.pushNamed(context, '/product_detail',
                  arguments: productList[index]);
            },
            title: Text(productList[index].name),
            subtitle: Text('\$${productList[index].price}'),
          );
        },
      ),
    );
  }
}
