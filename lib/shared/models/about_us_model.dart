class AboutUsModel {
  int? id;
  String? about;

  AboutUsModel({this.id, this.about});

  AboutUsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    about = json['about'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['about'] = this.about;
    return data;
  }
}