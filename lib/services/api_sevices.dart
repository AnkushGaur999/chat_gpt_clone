

import 'dart:convert';
import 'package:chatgpt_clone/models/chat_gpt_response.dart';
import 'package:chatgpt_clone/services/api_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class ApiServices{
  
  static Future<void> getModels() async{
    
    try{
      
      var response =  await post(
          Uri.parse("${ApiConstants.BASE_URL}/models"),
        headers: <String, String>{
            "Authorization": ApiConstants.apiKey
        });

      if(response.statusCode==200){
         var result =  ChatGptResponse.fromJson(jsonDecode(response.body));
         print(result.toJson());
      }

    }
    catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
      if(kDebugMode){

      }
    }
    
  }
}