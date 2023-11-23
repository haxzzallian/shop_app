import 'package:flutter/material.dart';

class ProductDetailscreen extends StatelessWidget {
  String title;
  ProductDetailscreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
