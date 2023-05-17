import 'package:doctorek/models/base/base_model.dart';

class RegisterModel extends BaseModel {
  String? email;
  String? password;
  String? name;
  String? age;
  String? phone;

  RegisterModel.fromJson(Map<String, dynamic> json) {
    BaseModel.fromJson(json);
    email = json['email'];
    password = json['password'];
    name = json['name'];
    age = json['age'];
    phone = json['phone'];
  }
}

//   "email":"doctorek@gmail.com",
//   "password":"test1234",
//   "name":"Abderrahmane Belhadj",
//   "age":"23",
//   "phone":"+213698813453"