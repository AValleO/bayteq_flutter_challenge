import 'package:bayteq_flutter_challenge/features/auth/data/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponseDto {
  final String accessToken;
  final String refreshToken;
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  const LoginResponseDto({
    required this.accessToken,
    required this.refreshToken,
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseDtoToJson(this);

  /// Convertir DTO a UserModel
  UserModel toUserModel() {
    return UserModel(
      id: id,
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      image: image,
      hair: const HairModel(),
      address: const AddressModel(coordinates: CoordinatesModel()),
      bank: const BankModel(),
      company: const CompanyModel(address: AddressModel(coordinates: CoordinatesModel())),
      crypto: const CryptoModel(),
    );
  }
}
