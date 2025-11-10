import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final double weight;
  final String eyeColor;
  final Hair hair;
  final String ip;
  final Address address;
  final String macAddress;
  final String university;
  final Bank bank;
  final Company company;
  final String ein;
  final String ssn;
  final String userAgent;
  final Crypto crypto;
  final String role;

  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.gender,
    required this.email,
    this.maidenName = '',
    this.age = 0,
    this.phone = '',
    this.password = '',
    this.birthDate = '',
    this.bloodGroup = '',
    this.height = 0.0,
    this.weight = 0.0,
    this.eyeColor = '',
    this.hair = const Hair(),
    this.ip = '',
    this.address = const Address(coordinates: Coordinates()),
    this.macAddress = '',
    this.university = '',
    this.bank = const Bank(),
    this.company = const Company(address: Address(coordinates: Coordinates())),
    this.ein = '',
    this.ssn = '',
    this.userAgent = '',
    this.crypto = const Crypto(),
    this.role = '',
  });

  @override
  List<Object> get props => [
        id,
        firstName,
        lastName,
        maidenName,
        age,
        gender,
        email,
        phone,
        username,
        password,
        birthDate,
        image,
        bloodGroup,
        height,
        weight,
        eyeColor,
        hair,
        ip,
        address,
        macAddress,
        university,
        bank,
        company,
        ein,
        ssn,
        userAgent,
        crypto,
        role,
      ];
}

class Hair extends Equatable {
  final String color;
  final String type;

  const Hair({
    this.color = '',
    this.type = '',
  });

  @override
  List<Object> get props => [color, type];
}

class Address extends Equatable {
  final String address;
  final String city;
  final String state;
  final String stateCode;
  final String postalCode;
  final Coordinates coordinates;
  final String country;

  const Address({
    this.address = '',
    this.city = '',
    this.state = '',
    this.stateCode = '',
    this.postalCode = '',
    required this.coordinates,
    this.country = '',
  });

  @override
  List<Object> get props => [
        address,
        city,
        state,
        stateCode,
        postalCode,
        coordinates,
        country,
      ];
}

class Coordinates extends Equatable {
  final double lat;
  final double lng;

  const Coordinates({
    this.lat = 0.0,
    this.lng = 0.0,
  });

  @override
  List<Object> get props => [lat, lng];
}

class Bank extends Equatable {
  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String currency;
  final String iban;

  const Bank({
    this.cardExpire = '',
    this.cardNumber = '',
    this.cardType = '',
    this.currency = '',
    this.iban = '',
  });

  @override
  List<Object> get props => [
        cardExpire,
        cardNumber,
        cardType,
        currency,
        iban,
      ];
}

class Company extends Equatable {
  final String department;
  final String name;
  final String title;
  final Address address;

  const Company({
    this.department = '',
    this.name = '',
    this.title = '',
    required this.address,
  });

  @override
  List<Object> get props => [department, name, title, address];
}

class Crypto extends Equatable {
  final String coin;
  final String wallet;
  final String network;

  const Crypto({
    this.coin = '',
    this.wallet = '',
    this.network = '',
  });

  @override
  List<Object> get props => [coin, wallet, network];
}
