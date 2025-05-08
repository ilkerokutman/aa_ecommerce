import 'package:aa_ecommerce/app/app.dart';
import 'package:aa_ecommerce/app/features/shared/data/controllers/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await AppBindings().dependencies();

  runApp(const MyApp());
}
