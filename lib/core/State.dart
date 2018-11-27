class AppState {
  static final AppState _singleton = new AppState._internal();

  bool _isLoggedIn = true;

  factory AppState() {
    return _singleton;
  }

  static AppState getInstance() {
    return _singleton;
  }

  AppState._internal();

  bool isLoggedIn() {
    return _isLoggedIn;
  }

}