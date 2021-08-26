class UserDataModel {
  String _uid;
  String _phone;
  String _name;
  String _email;

  String get uid => _uid;
  String get phone => _phone;
  String get name => _name;
  String get email => _email;

  UserDataModel({
      String uid,
      String address,
      String phone,
      String name,
      String usertype,
      // Location location,
      String email}){
    _uid = uid;
    _phone = phone;
    _name = name;
    _email = email;
}

  UserDataModel.fromJson(dynamic json) {
    _uid = json["uid"];
    _phone = json["phone"];
    _name = json["name"];
    _email = json["email"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["uid"] = _uid;
    map["phone"] = _phone;
    map["name"] = _name;
    map["email"] = _email;
    return map;
  }

}