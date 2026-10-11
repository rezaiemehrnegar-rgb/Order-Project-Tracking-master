// ignore_for_file: prefer_collection_literals

class CustomerModel {
  int? cusId;
  String? lastupdate;
  String? mail;
  String? name;
  String? phone;
  int? source;

  CustomerModel({
    this.cusId,
    this.lastupdate,
    this.mail,
    this.name,
    this.phone,
    this.source,
  });

  CustomerModel.fromJson(Map json) {
    cusId = json['cus_id'];
    lastupdate = json['lastupdate'];
    mail = json['mail'];
    name = json['name'];
    phone = json['phone'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data['cus_id'] = cusId;
    data['lastupdate'] = lastupdate;
    data['mail'] = mail;
    data['name'] = name;
    data['phone'] = phone;
    data['source'] = source;
    return data;
  }
}
