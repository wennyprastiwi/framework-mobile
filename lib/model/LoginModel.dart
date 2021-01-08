// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.statusCode,
        this.accessToken,
        this.user,
    });

    int statusCode;
    String accessToken;
    User user;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        statusCode: json["status_code"],
        accessToken: json["access_token"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "access_token": accessToken,
        "user": user.toJson(),
    };
}

class User {
    User({
        this.id,
        this.username,
        this.emailUser,
        this.emailVerifiedAt,
        this.type,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String username;
    String emailUser;
    dynamic emailVerifiedAt;
    String type;
    dynamic status;
    dynamic createdAt;
    dynamic updatedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        emailUser: json["email_user"],
        emailVerifiedAt: json["email_verified_at"],
        type: json["type"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email_user": emailUser,
        "email_verified_at": emailVerifiedAt,
        "type": type,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
