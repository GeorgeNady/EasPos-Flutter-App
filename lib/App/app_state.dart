import 'package:easpos/Networking/mapper.dart';

abstract class AppState {}

class Done extends AppState {
  Mappable model;

  Done({this.model});
}

class Error extends AppState {
  String msg;

  Error({this.msg});
}

class Start extends AppState {}
class Server extends AppState {}

class Loading extends AppState {}

class PhoneError extends AppState {}

class PhoneOk extends AppState {}

class PhoneFailed extends AppState {}

class CodeOk extends AppState {}
class OfferDone extends AppState {}
class ExDone extends AppState {}
class ProductsDone extends AppState {}
class PackageDone extends AppState {}

class CodeFailed extends AppState {}

class CodeResent extends AppState {}

class NameError extends AppState {}

class PasswordError extends AppState {}

class CodeSentForForget extends AppState {}

class PasswordResetDone extends AppState {}

class PasswordResetError extends AppState {}

class CodeSentForChange extends AppState {}

class PhoneNotStored extends AppState {}

class CodeCorrectForChange extends AppState {}

class CodeErrorForChange extends AppState {}


class Empty extends AppState {}

class AddedToFav extends AppState {}

class RemovedFromFav extends AppState {}

class IngredientAdded extends AppState {}
class CategoryAddedForItem extends AppState {}


