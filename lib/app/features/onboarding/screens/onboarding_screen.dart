import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/onboarding/data/controllers/onboarding_controller.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (ob) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...ob.onboardingData.map((e) => Text(e.title)),

              Divider(),
              ElevatedButton(
                onPressed: () async {
                  final box = GetStorage();
                  await box.write(Keys.didCompleteOnboarding, true);
                  Get.offAllNamed(Routes.home);
                },
                child: Text('Complete Onboarding'),
              ),
            ],
          ),
        );
      },
    );
  }
}
