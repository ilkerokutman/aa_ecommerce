import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListSplashScreen extends StatefulWidget {
  const ProductListSplashScreen({super.key});

  @override
  State<ProductListSplashScreen> createState() =>
      _ProductListSplashScreenState();
}

class _ProductListSplashScreenState extends State<ProductListSplashScreen> {
  int retryCount = 0;
  @override
  void initState() {
    super.initState();
    runInitTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            retryCount <= 3
                ? CircularProgressIndicator()
                : ElevatedButton(onPressed: runInitTasks, child: Text('Retry')),
      ),
    );
  }

  Future<void> runInitTasks() async {
    final ProductController productController = Get.find();

    if (!productController.didFetchedProducts) {
      await productController.fetchProducts();
      if (mounted) {
        setState(() => retryCount++);
      }
      if (retryCount < 3) {
        runInitTasks();
      }
    } else {
      Future.delayed(Duration.zero, () => Get.offAllNamed(Routes.home));
    }
  }
}
