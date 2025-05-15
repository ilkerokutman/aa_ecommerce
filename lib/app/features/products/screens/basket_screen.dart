import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (pc) {
        return Scaffold(
          appBar: AppBar(title: const Text('Sepet')),
          body:
              pc.currentOrder == null || pc.currentOrderItems.isEmpty
                  ? Center(child: Text('Sepetiniz boş'))
                  : SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 12,
                      children: [
                        ...pc.currentOrderItems.map((e) {
                          final product = pc.products.firstWhere(
                            (p) => p.id == e.productId,
                          );
                          return ListTile(
                            title: Text(product.title),
                            subtitle: Text(product.price.toStringAsFixed(2)),
                            leading: Image.network(product.images.first),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                ),
                                Text(e.quantity.toString()),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                          );
                        }),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('toplam'),
                            Text(pc.currentOrderSum.toStringAsFixed(2)),
                          ],
                        ),
                        Text('simdi satin al butonu'),
                        TextButton(
                          onPressed: () {
                            pc.removeBasket();
                          },
                          child: Text('sepeti sil'),
                        ),
                      ],
                    ),
                  ),
        );
      },
    );
  }
}
