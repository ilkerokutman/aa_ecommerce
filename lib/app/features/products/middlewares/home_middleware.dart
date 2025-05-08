import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeMiddleware extends GetMiddleware {
  @override
  int? get priority => 50;

  @override
  RouteSettings? redirect(String? route) {
    final ProductController productController = Get.find();
    final box = GetStorage();

    // check if onboarding completed
    if (!(box.read(Keys.didCompleteOnboarding) ?? false)) {
      return RouteSettings(name: Routes.onboarding);
    }

    // check if products loaded
    if (!productController.didFetchedProducts) {
      return RouteSettings(name: Routes.fetchProducts);
    }

    return null;
  }
}
