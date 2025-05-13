import 'package:aa_ecommerce/app/features/account/data/models/address.dart';
import 'package:aa_ecommerce/app/features/account/data/models/payment_method.dart';
import 'package:aa_ecommerce/app/features/account/data/models/user.dart';

class Profile {
  final AppUser user;
  final List<Address> addresses;
  final List<PaymentMethod> paymentMethods;
  final List<int> favorites;
  final List<int> recentlyViewed;

  Profile({
    required this.user,
    required this.addresses,
    required this.paymentMethods,
    required this.favorites,
    required this.recentlyViewed,
  });

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      user: AppUser.fromMap(map['user']),
      addresses: List<Address>.from(
        map['addresses'].map((x) => Address.fromMap(x)),
      ),
      paymentMethods: List<PaymentMethod>.from(
        map['paymentMethods'].map((x) => PaymentMethod.fromMap(x)),
      ),
      favorites: List<int>.from(map['favorites'].map((x) => x)),
      recentlyViewed: List<int>.from(map['recentlyViewed'].map((x) => x)),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user.toMap(),
      'addresses': addresses.map((x) => x.toMap()).toList(),
      'paymentMethods': paymentMethods.map((x) => x.toMap()).toList(),
      'favorites': favorites,
      'recentlyViewed': recentlyViewed,
    };
  }

  Profile copyWith({
    AppUser? user,
    List<Address>? addresses,
    List<PaymentMethod>? paymentMethods,
    List<int>? favorites,
    List<int>? recentlyViewed,
  }) {
    return Profile(
      user: user ?? this.user,
      addresses: addresses ?? this.addresses,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      favorites: favorites ?? this.favorites,
      recentlyViewed: recentlyViewed ?? this.recentlyViewed,
    );
  }
}
