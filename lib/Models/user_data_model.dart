import 'package:flutter/cupertino.dart';

class UserDataModel {
  String _uid;
  String _phone;
  String _name;
  String _email;
  String _companyName;

  String get uid => _uid;

  String get phone => _phone;

  String get name => _name;

  String get email => _email;

  String get companyName => _companyName;

  UserDataModel({
    String uid,
      @required String phone,
      @required String name,
      @required String email,
      @required String companyName}) {
    _uid = uid;
    _phone = phone;
    _name = name;
    _email = email;
    _companyName = companyName;
  }

  UserDataModel.fromJson(dynamic json) {
    _uid = json["uid"];
    _phone = json["phone"];
    _name = json["name"];
    _email = json["email"];
    _companyName = json["companyName"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["uid"] = _uid;
    map["phone"] = _phone;
    map["name"] = _name;
    map["email"] = _email;
    map["companyName"] = _companyName;
    return map;
  }
}
