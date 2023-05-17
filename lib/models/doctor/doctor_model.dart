class DoctorModel {
  int? id;
  String? name;
  String? speciality;
  String? phone;
  String? address;
  DoctorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    speciality = json['speciality'];
    phone = json['phone'];
    address = json['address'];
  }
  
}
