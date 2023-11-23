import 'package:flutter/material.dart';

class ProductDetailscreen extends StatelessWidget {
  static const routeName = '/product-detail';
  //String title;
  // ProductDetailscreen(this.title);
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
