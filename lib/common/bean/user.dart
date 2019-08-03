import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(nullable: false)
class User {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;

  User({
    this.firstName,
    this.lastName,
    this.dateOfBirth,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
