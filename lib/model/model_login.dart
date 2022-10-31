import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginAkses {
  String? id, username, password, firstName, lastName;

  LoginAkses(
      {this.username, this.password, this.id, this.firstName, this.lastName});

  static Future<LoginAkses> conecApi(String username, String password) async {
    var url =
        Uri.parse("https://dev-api-partners.blankontech.com/account/auth/");

    var response = await http.post(url, body: {
      "username": username,
      "password": password,
    });
    var user = jsonDecode(response.body);
    return LoginAkses(
      id: user['id'].toString(),
      firstName: user['first_name'],
      lastName: user['last_name'],
    );
  }
}
