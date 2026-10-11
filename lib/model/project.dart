// ignore_for_file: prefer_collection_literals

import 'package:orderproject/helper/string_helper.dart';

class ProjectModel {
  String? createdDate;
  String? detail;
  String? endDate;
  String? filePath;
  int? id;
  String? lastUpdate;
  String? percentage;
  int? priority;
  int? source;
  String? startDate;
  int? status;
  String? title;

  ProjectModel({
    this.createdDate,
    this.detail,
    this.endDate,
    this.filePath,
    this.id,
    this.lastUpdate,
    this.percentage,
    this.priority,
    this.source,
    this.startDate,
    this.status,
    this.title,
  });

  ProjectModel.fromJson(Map json) {
    createdDate = json['created_date'];
    detail = json['detail'];
    endDate = json['end_date'];
    filePath = json['file_path'];
    id = json['id'];
    lastUpdate = json['last_update'];
    percentage = json['percentage'].toString();
    priority = json['priority'].toString().toInt ?? 0;
    source = json['source'];
    startDate = json['start_date'];
    status = json['status'].toString().toInt ?? 0;
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data['created_date'] = createdDate;
    data['detail'] = detail;
    data['end_date'] = endDate;
    data['file_path'] = filePath;
    data['id'] = id;
    data['last_update'] = lastUpdate;
    data['percentage'] = percentage;
    data['priority'] = priority;
    data['source'] = source;
    data['start_date'] = startDate;
    data['status'] = status;
    data['title'] = title;
    return data;
  }
}
