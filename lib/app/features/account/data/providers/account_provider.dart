import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/account/data/models/profile.dart';
import 'package:aa_ecommerce/app/features/account/data/models/signin_request.dart';
import 'package:aa_ecommerce/app/features/account/data/models/signin_response.dart';
import 'package:aa_ecommerce/app/features/shared/data/models/generic_api_response.dart';
import 'package:aa_ecommerce/app/features/shared/data/providers/base_provider.dart';

class AccountProvider {
  static Future<GenericApiResponse> fetchProfile() async {
    final url = Keys.apiUrlProfile;
    final response = await BaseProvider.get(url);

    if (response.statusCode == 200) {
      final jsonData = response.data;

      final profile = Profile.fromMap(jsonData);

      return response.copyWith(data: profile);
    }

    return response;
  }

  static Future<GenericApiResponse> signIn(SigninRequest request) async {


    final url = Keys.apiUrlSignIn;
    final response = await BaseProvider.post(url, request.toMap());

    if (response.statusCode == 200) {
      final jsonData = response.data;

      final signinResponse = SigninResponse.fromMap(jsonData);

      return response.copyWith(data: signinResponse);
    }

    return response;
  }
}
