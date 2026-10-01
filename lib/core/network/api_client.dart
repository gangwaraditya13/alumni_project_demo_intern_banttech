import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiClient {

  Future<dynamic> post(String? url ,dynamic body)async{
    // debugPrint("body in remote Datasource : $body}");
    try {
      final response = await http.post(Uri.parse(url.toString()), headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }, body: jsonEncode(body)).timeout(Duration(seconds: 10));
      // debugPrint("response in ApiClient : ${response.body}");
      return checkResponse(response);
    }on SocketException{
      throw Exception("error in post on uri : ${url}");
    }
  }

  Future<dynamic> get(String url)async{
    try{
      final response = await http.get(Uri.parse(url.toString()),headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }).timeout(Duration(seconds: 10));

      return checkResponse(response);
    }on SocketException{
      throw Exception("error in get on uri : ${url}");
    }
  }

  Future<dynamic> checkResponse(http.Response response)async{
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else if(response.statusCode == 201){
      return jsonDecode(response.body);
    }else if(response.statusCode == 400){
      throw Exception("Bad Request");
    }else if(response.statusCode == 401){
      throw Exception("Unauthorized");
    }
    else{
      throw Exception("Some thing Noty ${response.statusCode}");
    }
  }

}