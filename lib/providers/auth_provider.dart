import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/services/auth_service.dart';

import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {

  late UserModel _user;

  UserModel get user =>  _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  /* Function untuk melakukan register */
  Future<bool> register({

    required final String name,
    required final String username,
    required final String email,
    required final String password,

  }) async {

    try {

      UserModel user = await AuthService().register(
        name: name, 
        username: username, 
        email: email, 
        password: password,
      );


      _user = user;

      return true;

    } catch (e) {

      print(e);
      return false;

    }

  }  


  Future<bool> login({

    required final String email,
    required final String password,

  }) async {

    try {

      UserModel user = await AuthService().login(

        email: email, 
        password: password,
      );


      _user = user;

      return true;

    } catch (e) {

      print(e);
      return false;

    }

  }
}