class BaseModel {
  bool? status;
  String? message;
  BaseModel({this.message, this.status});
  BaseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];

    message = json['message'];
  }
}
