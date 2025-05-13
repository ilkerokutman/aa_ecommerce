import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (pc) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Get.toNamed(Routes.profile);
                },
              ),
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  final box = GetStorage();
                  await box.write(Keys.didCompleteOnboarding, false);

                  final AccountController accountController = Get.find();
                  await accountController.signOut();

                  Get.offAllNamed(Routes.home);
                },
              ),
            ],
          ),
          body: ListView.builder(
            itemBuilder:
                (context, index) => ListTile(
                  title: Text(pc.products[index].title),
                  subtitle: Text(pc.products[index].code),
                ),
            itemCount: pc.products.length,
          ),
        );
      },
    );
  }
}
