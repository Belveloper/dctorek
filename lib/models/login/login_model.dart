class LoginModel {
  String? email;
  String? password;
  LoginModel({this.email, this.password});
  LoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];

    password = json['password'];
  }
}
