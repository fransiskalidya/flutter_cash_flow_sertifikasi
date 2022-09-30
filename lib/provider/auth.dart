import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
  void login(String email, String password) async{
    Uri url = Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDyXd6LGJWbv4mfcP42ekS1-ZhET33R_AQ");
    
    var response = await http.post(
      url,
      body: json.encode({
        "email" : email,
        "password" : password,
        "returnSecurePassword": true
      }),
    );
    print(json.decode(response.body));
  }
}