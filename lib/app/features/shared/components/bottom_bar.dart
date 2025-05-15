import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, this.currentIndex = 0});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (currentIndex == index) return;

        switch (index) {
          case 0:
            // anasayfa
            Get.offAllNamed(Routes.home);
            break;
          case 1:
            Get.toNamed(Routes.categories);
            break;
          case 2:
            // sepetim
            Get.toNamed(Routes.basket);
            break;
          case 3:
            // urunler
            Get.toNamed(Routes.productList);
            break;
          case 4:
            // profil
            Get.toNamed(Routes.profile);
            break;
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Kategoriler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Sepetim',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Ürünler'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
