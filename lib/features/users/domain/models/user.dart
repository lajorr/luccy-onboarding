import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required Address address,
    required Company company,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required String imgUrl,
    required Address address,
    required Company company,
  }) = _User;

  factory User.fromUserResponse(UserResponse res) => User(
        id: res.id,
        name: res.name,
        username: res.username,
        email: res.email,
        phone: res.phone,
        website: res.website,
        imgUrl: 'https://i.pravatar.cc/300?img=${res.id}',
        address: res.address,
        company: res.company,
      );
}

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}
