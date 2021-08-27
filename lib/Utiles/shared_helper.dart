import 'package:shared_preferences/shared_preferences.dart';
import 'Navigator/named-navigator_impl.dart';
import 'enumeration.dart';
import 'Navigator/routes.dart';

class SharedHelper {
  SharedPreferences sharedPreferences;

  Future<bool> removeData(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove(key.value);
  }

  Future<bool> logout() async {
    sharedPreferences = await SharedPreferences.getInstance();
    NamedNavigatorImpl().navigate(Routes.SPLASH_ROUTER , clean: true);
    return sharedPreferences.clear();
  }

  Future<bool> writeData(CachingKey key, value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    print("saving this value $value into local preference with key ${key.value}");
    Future returnedValue;
    if (value is String) {
      returnedValue = sharedPreferences.setString(key.value, value);
    } else if (value is int) {
      returnedValue = sharedPreferences.setInt(key.value, value);
    } else if (value is bool) {
      returnedValue = sharedPreferences.setBool(key.value, value);
    } else if (value is double) {
      returnedValue = sharedPreferences.setDouble(key.value, value);
    } else {
      return Future.error(NotValidCacheTypeException());
    }
    return returnedValue;
  }

  Future<bool> readBoolean(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return Future.value(sharedPreferences.getBool(key.value) ?? false);
  }

  Future<double> readDouble(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return Future.value(sharedPreferences.getDouble(key.value) ?? 0.0);
  }

  Future<int> readInteger(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return Future.value(sharedPreferences.getInt(key.value) ?? 0);
  }

  Future<String> readString(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return Future.value(sharedPreferences.getString(key.value) ?? "");
  }
}

final preference = SharedHelper();

class NotValidCacheTypeException implements Exception {
  String message() => "Not a valid caching type";
}

class CachingKey extends Enum<String> {
  const CachingKey(String val) : super(val);
  static const CachingKey AUTH_TOKEN = const CachingKey('AUTH_TOKEN');
  static const CachingKey USER_ID = const CachingKey('USER_ID');
  static const CachingKey USER_NAME = const CachingKey('USER_NAME');
  static const CachingKey USER_EMAIL = const CachingKey('USER_EMAIL');
  static const CachingKey MOBILE_NUMBER = const CachingKey('MOBILE_NUMBER');

  static const CachingKey COMPANY_ID = const CachingKey('COMPANY_ID');
  static const CachingKey COMPANY_NAME = const CachingKey('COMPANY_NAME');


  static const CachingKey ADDRESS = const CachingKey('ADDRESS');
  static const CachingKey LONG = const CachingKey('LONG');
  static const CachingKey LAT = const CachingKey('LAT');


}


class StaticTexts {
  static const INTERNET_CONNECTION_FIELD = 'تحقق من الاتصال بالانترنت';
  static const USER_NOT_FOUND = 'هذا المستخدم غير موجود';
}
