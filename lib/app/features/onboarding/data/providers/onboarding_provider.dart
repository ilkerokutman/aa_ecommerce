import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/onboarding/data/models/onboarding.dart';
import 'package:aa_ecommerce/app/features/shared/data/models/generic_api_response.dart';
import 'package:aa_ecommerce/app/features/shared/data/providers/base_provider.dart';

class OnboardingProvider {
  static Future<GenericApiResponse> getOnboardingData() async {
    final response = await BaseProvider.get(Keys.apiUrlOnboarding);

    if (response.success) {
      final data = response.data as List<Map<String, dynamic>>;
      final result = response.copyWith(
        data: data.map((e) => OnboardingDefinition.fromMap(e)).toList(),
      );
      return result;
    }
    return response;
  }
}
