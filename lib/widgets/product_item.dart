import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
import '../providers/product.dart';
import '../providers/cart.dart';

class ProductItem extends StatelessWidget {
  /* final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id, this.title, this.imageUrl); */

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailscreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: Consumer<Product>(
            builder: (ctx, product, child) => IconButton(
                onPressed: () => product.toggleFavoriteStatus(),
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                )),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
            },
          ),
        ),
      ),
    );
    // child: ,
  }
}
