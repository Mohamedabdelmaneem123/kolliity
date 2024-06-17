class UserModel {
  final String id;
  final String token;
  final DateTime expiry;
  final String userName;
  final String email;
  final String profileImage;
  final List<String> roles;

  UserModel({
    required this.id,
    required this.token,
    required this.expiry,
    required this.userName,
    required this.email,
    required this.profileImage,
    required this.roles,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      token: json['token'],
      expiry: DateTime.parse(json['expiry']),
      userName: json['userName'],
      email: json['email'],
      profileImage: json['profileImage'],
      roles: List<String>.from(json['roles']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token,
      'expiry': expiry.toIso8601String(),
      'userName': userName,
      'email': email,
      'profileImage': profileImage,
      'roles': roles,
    };
  }
}
