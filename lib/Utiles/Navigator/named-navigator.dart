abstract class NamedNavigator {
  Future navigate(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});

  void popUntil(String routeName);
}
