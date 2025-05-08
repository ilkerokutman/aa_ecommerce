import 'package:aa_ecommerce/app/features/onboarding/data/models/onboarding.dart';
import 'package:aa_ecommerce/app/features/onboarding/data/providers/onboarding_provider.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final RxBool _didFetchedData = false.obs;
  bool get didFetchedData => _didFetchedData.value;

  final RxList<OnboardingDefinition> _onboardingData =
      <OnboardingDefinition>[].obs;
  List<OnboardingDefinition> get onboardingData => _onboardingData;

  Future<void> fetchOnboardingData() async {
    final response = await OnboardingProvider.getOnboardingData();
    if (response.success) {
      _onboardingData.assignAll(response.data as List<OnboardingDefinition>);
    } else {
      _onboardingData.clear();
    }
    _didFetchedData.value = true;
    update();
  }
}
