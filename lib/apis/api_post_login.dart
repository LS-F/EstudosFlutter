import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiPostLogin {
  final baseURL      = 'http://localhost:9971/rest/api/oauth2/v1/token?grant_type=password'; 

  Future <Map<String,dynamic>> fLogin(String userId, String password) async{
    Map<String,dynamic> retorno ={
      "apiResponse":0,
    };
    try {
      http.Response response = await http.post(Uri.parse("${baseURL}&password=${password}&username=${userId}"),
       headers:<String, String> {
        'Content-Type': 'application/json'},
      );

      if(response.statusCode != 201){
       var json = jsonDecode(utf8.decode(response.bodyBytes));
        retorno["apiResponse"] = response.statusCode;
        retorno["message"] = json["message"];
        return retorno;
      }else{
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        retorno["apiResponse"] = response.statusCode;
        retorno["access_token"] = json['access_token'];
        return retorno;
      }
    } 
    catch (e) {
       print('fGetProds StastusCode: ${e.toString()}');
        retorno["apiResponse"] ="ERROR";
        retorno["message"] = "${e.toString()}";
        return retorno;
    }
  }
}