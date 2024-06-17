// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

class Profile {
  String id;
  String userName;
  String fullNameInArabic;
  String code;
  dynamic profileImage;

  Profile({
    required this.id,
     required this.userName,
     required this.fullNameInArabic,
     required this.code,
    this.profileImage,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    id: json["id"],
    userName: json["userName"],
    fullNameInArabic: json["fullNameInArabic"],
    code: json["code"],
    profileImage: json["profileImage"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userName": userName,
    "fullNameInArabic": fullNameInArabic,
    "code": code,
    "profileImage": profileImage,
  };
}
