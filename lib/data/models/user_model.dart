//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';

//Internal dependencies
import 'package:nexrack_app/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart'; // For JSON serialization

@freezed
abstract class UserModel with _$UserModel implements User {
  const UserModel._();
  const factory UserModel({
    required String id,
    required String name,
    required String email,
  }) = _UserModel;

  factory UserModel.empty() => const UserModel(id: 'emptyId', name: 'emptyName', email: 'emptyEmail');

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this as _UserModel);
}