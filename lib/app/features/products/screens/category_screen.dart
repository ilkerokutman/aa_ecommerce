import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/features/shared/components/bottom_bar.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (pc) {
        return Scaffold(
          appBar: AppBar(title: Text('Kategoriler')),
          body: ListView.separated(
            itemBuilder:
                (context, index) => ListTile(
                  title: Text(pc.categories[index].name),
                  trailing: Text(
                    '(${pc.products.where((e) => e.categoryId == pc.categories[index].id).length})',
                  ),
                  onTap: () {
                    Get.toNamed(
                      Routes.productList,
                      arguments: {'selectedCategory': pc.categories[index]},
                    );
                  },
                ),
            itemCount: pc.categories.length,
            separatorBuilder: (context, index) => Divider(),
          ),
          bottomNavigationBar: BottomBarWidget(currentIndex: 1),
        );
      },
    );
  }
}
