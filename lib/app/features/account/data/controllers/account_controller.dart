import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/account/data/models/profile.dart';
import 'package:aa_ecommerce/app/features/account/data/models/signin_request.dart';
import 'package:aa_ecommerce/app/features/account/data/models/signin_response.dart';
import 'package:aa_ecommerce/app/features/account/data/providers/account_provider.dart';
import 'package:aa_ecommerce/app/features/shared/data/models/generic_api_response.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AccountController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    emailController =
        TextEditingController()..addListener(() {
          _signinRequest.value = signinRequest.copyWith(
            email: emailController.text,
          );
          update();
        });

    passwordController =
        TextEditingController()..addListener(() {
          _signinRequest.value = signinRequest.copyWith(
            password: passwordController.text,
          );
          update();
        });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  //#region MARK: Account
  final box = GetStorage();
  final Rxn<Profile> _profile = Rxn<Profile>();
  Profile? get profile => _profile.value;

  Future<void> fetchProfile() async {
    final response = await AccountProvider.fetchProfile();
    _profile.value = response.data;
    update();
  }

  Future<GenericApiResponse> signIn() async {
    if (signinRequest.email.isEmpty || signinRequest.password.isEmpty) {
      return GenericApiResponse(
        statusCode: 401,
        success: false,
        message: 'Email ve şifre zorunlu alanlardır.',
      );
    }
    final response = await AccountProvider.signIn(signinRequest);

    final accessToken = response.data.accessToken;
    await box.write(Keys.accessToken, accessToken);
    emailController.clear();
    passwordController.clear();
    _signinResponse.value = response.data;
    update();
    if (response.success) {
      await fetchProfile();
    }
    return response;
  }

  Future<void> signOut() async {
    await box.remove(Keys.accessToken);
    _profile.value = null;
    update();
    Get.offAllNamed(Routes.home);
  }

  void toggleFavorite(int productId) {
    if (profile == null) return;
    if (profile!.favorites.contains(productId)) {
      _profile.value!.favorites.remove(productId);
    } else {
      _profile.value!.favorites.add(productId);
    }
    update();
  }

  //#endregion

  //#region MARK: Signin
  final Rx<SigninRequest> _signinRequest =
      SigninRequest(email: '', password: '').obs;

  SigninRequest get signinRequest => _signinRequest.value;

  final Rx<SigninResponse> _signinResponse =
      SigninResponse(accessToken: '', refreshToken: '', expiresOn: 0).obs;

  SigninResponse get signinResponse => _signinResponse.value;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  //#endregion
}
