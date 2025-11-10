// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  image: json['image'] as String,
  gender: json['gender'] as String,
  email: json['email'] as String,
  maidenName: json['maidenName'] as String? ?? '',
  age: (json['age'] as num?)?.toInt() ?? 0,
  phone: json['phone'] as String? ?? '',
  password: json['password'] as String? ?? '',
  birthDate: json['birthDate'] as String? ?? '',
  bloodGroup: json['bloodGroup'] as String? ?? '',
  height: (json['height'] as num?)?.toDouble() ?? 0.0,
  weight: (json['weight'] as num?)?.toDouble() ?? 0.0,
  eyeColor: json['eyeColor'] as String? ?? '',
  hair: HairModel.fromJson(json['hair'] as Map<String, dynamic>),
  ip: json['ip'] as String? ?? '',
  address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
  macAddress: json['macAddress'] as String? ?? '',
  university: json['university'] as String? ?? '',
  bank: BankModel.fromJson(json['bank'] as Map<String, dynamic>),
  company: CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
  ein: json['ein'] as String? ?? '',
  ssn: json['ssn'] as String? ?? '',
  userAgent: json['userAgent'] as String? ?? '',
  crypto: CryptoModel.fromJson(json['crypto'] as Map<String, dynamic>),
  role: json['role'] as String? ?? '',
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'maidenName': instance.maidenName,
  'age': instance.age,
  'gender': instance.gender,
  'email': instance.email,
  'phone': instance.phone,
  'username': instance.username,
  'password': instance.password,
  'birthDate': instance.birthDate,
  'image': instance.image,
  'bloodGroup': instance.bloodGroup,
  'height': instance.height,
  'weight': instance.weight,
  'eyeColor': instance.eyeColor,
  'ip': instance.ip,
  'macAddress': instance.macAddress,
  'university': instance.university,
  'ein': instance.ein,
  'ssn': instance.ssn,
  'userAgent': instance.userAgent,
  'role': instance.role,
  'hair': instance.hair.toJson(),
  'address': instance.address.toJson(),
  'bank': instance.bank.toJson(),
  'company': instance.company.toJson(),
  'crypto': instance.crypto.toJson(),
};

HairModel _$HairModelFromJson(Map<String, dynamic> json) => HairModel(
  color: json['color'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$HairModelToJson(HairModel instance) => <String, dynamic>{
  'color': instance.color,
  'type': instance.type,
};

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
  address: json['address'] as String? ?? '',
  city: json['city'] as String? ?? '',
  state: json['state'] as String? ?? '',
  stateCode: json['stateCode'] as String? ?? '',
  postalCode: json['postalCode'] as String? ?? '',
  coordinates: CoordinatesModel.fromJson(
    json['coordinates'] as Map<String, dynamic>,
  ),
  country: json['country'] as String? ?? '',
);

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'stateCode': instance.stateCode,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'coordinates': instance.coordinates.toJson(),
    };

CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) =>
    CoordinatesModel(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CoordinatesModelToJson(CoordinatesModel instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};

BankModel _$BankModelFromJson(Map<String, dynamic> json) => BankModel(
  cardExpire: json['cardExpire'] as String? ?? '',
  cardNumber: json['cardNumber'] as String? ?? '',
  cardType: json['cardType'] as String? ?? '',
  currency: json['currency'] as String? ?? '',
  iban: json['iban'] as String? ?? '',
);

Map<String, dynamic> _$BankModelToJson(BankModel instance) => <String, dynamic>{
  'cardExpire': instance.cardExpire,
  'cardNumber': instance.cardNumber,
  'cardType': instance.cardType,
  'currency': instance.currency,
  'iban': instance.iban,
};

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
  department: json['department'] as String? ?? '',
  name: json['name'] as String? ?? '',
  title: json['title'] as String? ?? '',
  address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'department': instance.department,
      'name': instance.name,
      'title': instance.title,
      'address': instance.address.toJson(),
    };

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) => CryptoModel(
  coin: json['coin'] as String? ?? '',
  wallet: json['wallet'] as String? ?? '',
  network: json['network'] as String? ?? '',
);

Map<String, dynamic> _$CryptoModelToJson(CryptoModel instance) =>
    <String, dynamic>{
      'coin': instance.coin,
      'wallet': instance.wallet,
      'network': instance.network,
    };
