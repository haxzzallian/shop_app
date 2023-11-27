import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailscreen extends StatelessWidget {
  static const routeName = '/product-detail';
  //String title;
  // ProductDetailscreen(this.title);
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
      body: Container(
        height: 300,
        child: Image.network(loadedProduct.imageUrl),
      ),
    );
  }
}
