class LoginModel {
  String bearerToken;

  LoginModel({
    required this.bearerToken
    }
  );

  factory LoginModel.fromJson(Map<String,dynamic> json) => LoginModel(
    bearerToken:json['access_token'],
  );

}