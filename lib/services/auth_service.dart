import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class AuthService {

  /* API URL */
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  static int statusCode = 0;

  /* Another Register Function */
  /* Future<String> register2({
    
    required final String name, 
    required final String username,
    required final String email,
    required final String password,

  }) async {

    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

  }; */


  /* Register Function */
  Future<UserModel> register({

    required final String name, 
    required final String username,
    required final String email,
    required final String password,

  }) async {

    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    statusCode = response.statusCode;

    if(response.statusCode == 200) {

      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      // ignore: prefer_interpolation_to_compose_strings
      user.token = 'Bearer ' + data['access_token'];
      
      
      return user;

    } else {

      throw Exception('Gagal Register');

    }
  }
}