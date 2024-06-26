import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_receitas/exceptions/auth_exception.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
  String? _token;
  String? _email;
  String? _uid;
  DateTime? _expiryDate;

  bool get isAuth {
    final isValid = _expiryDate?.isAfter(DateTime.now()) ?? false;
    return _token != null && isValid;
  }

  String? get token {
    return isAuth ? _token : null;
  }

  String? get email {
    return isAuth ? _email : null;
  }

  String? get uid {
    return isAuth ? _email : null;
  }

  Future<void> _authenticate(String email, String password, String urlFragment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyCO1cgZoyxaZ8ryqejhEwFaFnkvjgPR1G4';

    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    final body = jsonDecode(response.body);

    if(body['error'] != null) {
      throw AuthException(body['error']['menssage']);
    } else {
      _token = body['idToken'];
      _email = body['email'];
      _uid = body['localId'];

      _expiryDate = DateTime.now().add(
        Duration(
          seconds: int.parse(body['expiresIn']),
        ),
      );
      notifyListeners();
    }

    print(jsonDecode(response.body));
  }

  Future<void> signup(String email, String password) async{
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async{
    return _authenticate(email, password, 'signInWithPassword');
  }
}