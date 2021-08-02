import 'dart:convert';

abstract class Mappable<T> {
  factory Mappable(Mappable type, dynamic data) {
    if (type is BaseMappable) {
      Map<String, dynamic> mappingData = json.decode(data.toString());
      return type.fromJson(mappingData);
    } else if (type is ListMappable) {
      return type.fromJsonList(data as List);
    }
    print("I Couldn't Parser");
    return null;
  }
}

abstract class BaseMappable<T> implements Mappable {
  Mappable fromJson(Map<String, dynamic> json);
}

abstract class ListMappable<T> implements Mappable {
  Mappable fromJsonList(List<dynamic> json);
}
