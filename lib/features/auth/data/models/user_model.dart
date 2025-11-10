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
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.image,
    required super.gender,
    required super.email,
    super.maidenName,
    super.age,
    super.phone,
    super.password,
    super.birthDate,
    super.bloodGroup,
    super.height,
    super.weight,
    super.eyeColor,
    required this.hair,
    super.ip,
    required this.address,
    super.macAddress,
    super.university,
    required this.bank,
    required this.company,
    super.ein,
    super.ssn,
    super.userAgent,
    required this.crypto,
    super.role,
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
    super.color,
    super.type,
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
    super.address,
    super.city,
    super.state,
    super.stateCode,
    super.postalCode,
    required this.coordinates,
    super.country,
  }) : super(coordinates: coordinates);

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

@JsonSerializable()
class CoordinatesModel extends Coordinates {
  const CoordinatesModel({
    super.lat,
    super.lng,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesModelToJson(this);
}

@JsonSerializable()
class BankModel extends Bank {
  const BankModel({
    super.cardExpire,
    super.cardNumber,
    super.cardType,
    super.currency,
    super.iban,
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
    super.department,
    super.name,
    super.title,
    required this.address,
  }) : super(address: address);

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}

@JsonSerializable()
class CryptoModel extends Crypto {
  const CryptoModel({
    super.coin,
    super.wallet,
    super.network,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoModelToJson(this);
}
