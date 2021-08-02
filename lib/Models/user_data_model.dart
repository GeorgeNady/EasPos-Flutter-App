/// uid : "ajad3xe55gfjuVhnmPB7g1YIzAx1"
/// address : "نقطة مطافى العمرانية"
/// phone : "01133334444"
/// name : "ادهم الغريب"
/// usertype : "FireFitter"
/// location : {"lat":29.9955295,"long":31.2048396}
/// email : "adham@g.com"

class UserDataModel {
  String _uid;
  String _address;
  String _phone;
  String _name;
  bool _verified;
  String _usertype;
  // Location _location;
  String _email;

  String get uid => _uid;
  String get address => _address;
  String get phone => _phone;
  String get name => _name;
  bool get verified => _verified;
  String get usertype => _usertype;
  // Location get location => _location;
  String get email => _email;

  UserDataModel({
      String uid,
      String address,
      String phone,
      String name,
    bool verified,
      String usertype,
      // Location location,
      String email}){
    _uid = uid;
    _address = address;
    _phone = phone;
    _name = name;
    _verified = verified;
    _usertype = usertype;
    // _location = location;
    _email = email;
}

  UserDataModel.fromJson(dynamic json) {
    _uid = json["uid"];
    _address = json["address"];
    _phone = json["phone"];
    _name = json["name"];
    _verified = json["verified"];
    _usertype = json["usertype"];
    // _location = json["location"] != null ? Location.fromJson(json["location"]) : null;
    _email = json["email"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["uid"] = _uid;
    map["address"] = _address;
    map["phone"] = _phone;
    map["name"] = _name;
    map["verified"] = _verified;
    map["usertype"] = _usertype;
    /*if (_location != null) {
      map["location"] = _location?.toJson();
    }*/
    map["email"] = _email;
    return map;
  }

}

/// lat : 29.9955295
/// long : 31.2048396

class Location {
  String _lat;
  String _long;

  String get lat => _lat;
  String get long => _long;

  Location({
    String lat,
    String long}){
    _lat = lat;
    _long = long;
}

  Location.fromJson(dynamic json) {
    _lat = json["lat"];
    _long = json["long"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lat"] = _lat;
    map["long"] = _long;
    return map;
  }

}