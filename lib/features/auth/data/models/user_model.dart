// ignore_for_file: overridden_fields

import 'package:bayteq_flutter_challenge/features/auth/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel extends User {
  @override
  final HairModel hair;
  @override
  final AddressModel address;
  @override
  final BankModel bank;
  @override
  final CompanyModel company;
  @override
  final CryptoModel crypto;

  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.maidenName,
    required super.age,
    required super.gender,
    required super.email,
    required super.phone,
    required super.username,
    required super.password,
    required super.birthDate,
    required super.image,
    required super.bloodGroup,
    required super.height,
    required super.weight,
    required super.eyeColor,
    required this.hair,
    required super.ip,
    required this.address,
    required super.macAddress,
    required super.university,
    required this.bank,
    required this.company,
    required super.ein,
    required super.ssn,
    required super.userAgent,
    required this.crypto,
    required super.role,
  }) : super(
          hair: hair,
          address: address,
          bank: bank,
          company: company,
          crypto: crypto,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class HairModel extends Hair {
  const HairModel({
    required super.color,
    required super.type,
  });

  factory HairModel.fromJson(Map<String, dynamic> json) =>
      _$HairModelFromJson(json);

  Map<String, dynamic> toJson() => _$HairModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddressModel extends Address {
  @override
  final CoordinatesModel coordinates;

  const AddressModel({
    required super.address,
    required super.city,
    required super.state,
    required super.stateCode,
    required super.postalCode,
    required this.coordinates,
    required super.country,
  }) : super(coordinates: coordinates);

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

@JsonSerializable()
class CoordinatesModel extends Coordinates {
  const CoordinatesModel({
    required super.lat,
    required super.lng,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesModelToJson(this);
}

@JsonSerializable()
class BankModel extends Bank {
  const BankModel({
    required super.cardExpire,
    required super.cardNumber,
    required super.cardType,
    required super.currency,
    required super.iban,
  });

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);

  Map<String, dynamic> toJson() => _$BankModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompanyModel extends Company {
  @override
  final AddressModel address;

  const CompanyModel({
    required super.department,
    required super.name,
    required super.title,
    required this.address,
  }) : super(address: address);

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}

@JsonSerializable()
class CryptoModel extends Crypto {
  const CryptoModel({
    required super.coin,
    required super.wallet,
    required super.network,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoModelToJson(this);
}
