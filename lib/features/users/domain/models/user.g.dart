// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: json['geo'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

_$GeoImpl _$$GeoImplFromJson(Map<String, dynamic> json) => _$GeoImpl(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$GeoImplToJson(_$GeoImpl instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
