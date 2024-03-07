import 'dart:convert';

import 'package:http/http.dart' as http;

List dataFromApi = [];

class ApiMethod {
  static Future<void> fetchData() async {
    const uri = "https://retoolapi.dev/Gv0v1v/data";
    final response = await http.get(Uri.parse(uri));
    dataFromApi = json.decode(response.body);
   // print(dataFromApi.toString());
  }
}
