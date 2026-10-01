import 'dart:convert';
import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';

import 'package:http/http.dart' as http;

class ApiClient {

  Future<dynamic> post(String? url ,dynamic body)async{
    try {
      final response = await http.post(Uri.parse(url.toString()), headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }, body: jsonEncode(body));

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
      });

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