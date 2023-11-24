class Logindata{
  int? status;
  String? message;

  Logindata({this.status, this.message});

  Logindata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}