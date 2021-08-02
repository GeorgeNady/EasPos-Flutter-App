import 'package:fluttertoast/fluttertoast.dart';

abstract class CustomExceptions implements Exception {}

class NotFoundException extends CustomExceptions {
  @override
  String toString() => 'Not found exception';
}

class ServerException extends CustomExceptions {
  @override
  String toString() => 'Server exception';
}

class UnauthenticatedException extends CustomExceptions {
  @override
  String toString() => 'Unauthenticated exception';
}

class TimeOutException extends CustomExceptions {
  @override
  String toString() => 'Timeout exception';
}

class MediaTypeException extends CustomExceptions {
  @override
  String toString() => 'Media type exception';
}

abstract class ExceptionHandler {
  static handle(Exception exception) {
    print('Exception type >>> ${exception.toString()}');
    if (exception is NotFoundException) {
      Fluttertoast.showToast(msg: exception.toString());
    } else if (exception is ServerException) {
      Fluttertoast.showToast(msg: exception.toString());
    } else if (exception is UnauthenticatedException) {
      Fluttertoast.showToast(msg: exception.toString());
    } else if (exception is TimeOutException) {
      Fluttertoast.showToast(msg: exception.toString());
    } else if (exception is MediaTypeException) {
      Fluttertoast.showToast(msg: exception.toString());
    } else {
      Fluttertoast.showToast(msg: exception.toString());
    }
  }
}
