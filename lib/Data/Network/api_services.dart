import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:weather_app/Data/Network/base_api_services.dart';
import 'package:weather_app/Data/app_exceptions.dart';

class ApiServices extends BaseApiServices {
  dynamic jsonResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      default:
        throw FetchDataException('Error while communication ${response.statusCode}');
    }
  }

  Future getApi(String url) async {
    var jsonData;
    try {
      var response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonData = jsonResponse(response);
    } on RequestTimeout {
      throw RequestTimeout('Request Timeout');
    } on SocketException {
      throw InternetException('No Internet');
    }
    return jsonData;
  }
}
