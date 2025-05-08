import 'package:aa_ecommerce/app/features/onboarding/data/controllers/onboarding_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingMiddleware extends GetMiddleware {
  @override
  int? get priority => 50;

  @override
  RouteSettings? redirect(String? route) {
    final OnboardingController ob = Get.find();

    if (!ob.didFetchedData) {
      return RouteSettings(name: Routes.fetchOnboardingData);
    }
    return null;
  }
}
