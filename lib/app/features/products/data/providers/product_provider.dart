import 'package:aa_ecommerce/app/features/products/data/models/product.dart';
import 'package:aa_ecommerce/app/features/shared/data/models/generic_api_response.dart';
import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/shared/data/providers/base_provider.dart';

class ProductProvider {
  static Future<GenericApiResponse> fetchProducts() async {
    print('fetching products');
    final response = await BaseProvider.get(Keys.apiUrlProducts);

    if (response.success) {
      final data = response.data as List<dynamic>;
      final result = response.copyWith(
        data: data.map((e) => Product.fromMap(e)).toList(),
      );
      print('products fetched');
      return result;
    }
    print('products not fetched');
    return response;
  }
}
