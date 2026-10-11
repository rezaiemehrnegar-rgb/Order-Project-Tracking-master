import 'package:orderproject/model/customer.dart';

class OrderModel {
  String? createdDate;
  String? customer;
  String? deliveryDate;
  String? details;
  String? filePath;
  int? id;
  String? lastupdate;
  int? percentage;
  String? price;
  int? source;
  String? startDate;
  int? status;
  String? title;
  int? urgency;
  CustomerModel? customerData;

  OrderModel({
    this.createdDate,
    this.customer,
    this.deliveryDate,
    this.details,
    this.filePath,
    this.id,
    this.lastupdate,
    this.percentage,
    this.price,
    this.source,
    this.startDate,
    this.status,
    this.title,
    this.urgency,
    this.customerData,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    createdDate = json['created_date'];
    customer = json['customer'].toString();
    deliveryDate = json['delivery_date'];
    details = json['details'];
    filePath = json['file_path'];
    id = json['id'];
    lastupdate = json['lastupdate'];
    percentage = json['percentage'];
    price = json['price'];
    source = json['source'];
    startDate = json['start_date'];
    status = json['status'];
    title = json['title'];
    urgency = json['urgency'];
    customerData = CustomerModel.fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_date'] = createdDate;
    data['customer'] = customer;
    data['delivery_date'] = deliveryDate;
    data['details'] = details;
    data['file_path'] = filePath;
    data['id'] = id;
    data['lastupdate'] = lastupdate;
    data['percentage'] = percentage;
    data['price'] = price;
    data['source'] = source;
    data['start_date'] = startDate;
    data['status'] = status;
    data['title'] = title;
    data['urgency'] = urgency;
    if (customerData != null) {
      data['customerData'] = customerData!.toJson();
    }
    return data;
  }
}
