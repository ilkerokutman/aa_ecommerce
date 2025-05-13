import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
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
    final AccountController accountController = Get.find();
    final box = GetStorage();

    // MARK: 1. check if onboarding completed
    if (!(box.read(Keys.didCompleteOnboarding) ?? false)) {
      return RouteSettings(name: Routes.onboarding);
    }

    // MARK: 2. check if access token exists
    final accessToken = (box.read(Keys.accessToken) ?? '');

    if (accessToken.isEmpty) {
      return RouteSettings(name: Routes.signIn);
    }

    // MARK: 3. check if profile loaded
    if (accountController.profile == null) {
      return RouteSettings(name: Routes.fetchProfile);
    }

    // MARK: 4. check if products loaded
    if (!productController.didFetchedProducts) {
      return RouteSettings(name: Routes.fetchProducts);
    }

    // MARK: 5. if all checks passed, return null
    return null;
  }
}
