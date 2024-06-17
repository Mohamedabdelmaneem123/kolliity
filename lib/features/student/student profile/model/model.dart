// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  String? id;
  String? userName;
  String? fullNameInArabic;
  String? code;
  dynamic profileImage;

  Profile({
    this.id,
     this.userName,
     this.fullNameInArabic,
     this.code,
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
