import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:flutter/material.dart';

class ProductFavoriteButtonWidget extends StatelessWidget {
  const ProductFavoriteButtonWidget({
    super.key,
    required this.isFavorite,
    required this.product,
    required this.callback,
  });

  final bool isFavorite;
  final Product product;
  final GestureTapCallback callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: Icon(
          Icons.favorite,
          color: isFavorite ? Colors.red : Colors.grey,
        ),
        onPressed: callback,
      ),
    );
  }
}
