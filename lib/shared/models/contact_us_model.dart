class ContactUsModel {
  String? contactNumber;

  ContactUsModel({this.contactNumber});

  ContactUsModel.fromJson(Map<String, dynamic> json) {
    contactNumber = json['contact_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_number'] = this.contactNumber;
    return data;
  }
}