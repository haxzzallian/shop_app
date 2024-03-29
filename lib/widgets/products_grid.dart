import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  var showOnlyfavorite;
  ProductsGrid(this.showOnlyfavorite);
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products =
        showOnlyfavorite ? productData.favoriteItems : productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      //itemBuilder: (ctx, i) => ChangeNotifierProvider(
      //create: (c) => products[i]
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(

            //products[i].id,
            // products[i].title,
            // products[i].imageUrl,
            ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
