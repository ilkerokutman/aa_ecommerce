import 'package:aa_ecommerce/app/features/account/data/controllers/account_controller.dart';
import 'package:aa_ecommerce/app/features/onboarding/data/controllers/onboarding_controller.dart';
import 'package:aa_ecommerce/app/features/products/data/controllers/product_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync(() async => ProductController(), permanent: true);
    await Get.putAsync(() async => OnboardingController(), permanent: true);
    await Get.putAsync(() async => AccountController(), permanent: true);
  }
}
