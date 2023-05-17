class AppointmentModel {
  int? id;
  String? name;
  String? cause;
  String? with_;
  String? time;

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cause = json['cause'];
    with_ = json['with'];
    time = json['time'];
  }
}

//  "id":1,
  // "name":"Abderrahmane Belhadj",
  // "cause":"suffering from headache",
  // "with":"Dr Seddiki Kamal",
  // "time":"12:24 16/05/2023"