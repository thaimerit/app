import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  String? _token;

  get isAuth {
    return _token != null;
  }

  Future<void> login() async {
    // for test and develop
    _token = "login";

    notifyListeners();
  }
}
