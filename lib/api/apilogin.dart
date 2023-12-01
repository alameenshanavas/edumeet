import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edumeet/models/detailsmodel.dart';
import 'package:flutter_edumeet/models/diariesmodel.dart';
import 'package:flutter_edumeet/models/diaryupdatemodel.dart';
import 'package:flutter_edumeet/models/editnamemodel.dart';


import 'package:flutter_edumeet/models/loginmodel.dart';
import 'package:flutter_edumeet/models/logoutmodel.dart';
import 'package:flutter_edumeet/models/profilemodel.dart';
import 'package:flutter_edumeet/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Apiclass{

  final dio = Dio();
  final url = URL();
  
ValueNotifier<List<Diariesdata>> shopNotifier= ValueNotifier([]); 

  Apiclass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
      
    );
  }
  

  


  Future<Logindata?>loginUserApi(FormData formdata)async{
    try {
      final result = await dio.post(url.loginend, data: formdata);
      print("login**********$result");
      return Logindata.fromJson((result.data));
    } on DioException 
    catch (e) {
      print(e);
      
    }
   
      
    
  }
   Future<Profiledata?> profUserApi() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    var tok = share.getString('token');
    final result = await dio.get(url.baseUrl + url.profileend,
        options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $tok '
        }));
        print("profileresult$result");
    return Profiledata.fromJson(result.data); 
  }
  Future<Detailsmodel?> detatilUserApi() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    var tok = share.getString('token');
    final result = await dio.get(url.baseUrl + url.detailsend,
        options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $tok '
        }));
    return Detailsmodel.fromJson(result.data); 
  }
  Future<Editnamedata?>editUserApi(FormData formdata)async{
    try {
          SharedPreferences share = await SharedPreferences.getInstance();

var tok = share.getString('token');
      final result = await dio.post(url.editnameend, data: formdata,
      options: Options(headers: {
        'Content': 'application/json',
        'Accepts': 'application/json',
        'Authorization': 'Bearer $tok '
      }));
      return Editnamedata.fromJson((result.data));
    } on DioException 
    catch (e) {
      print(e);
      
    }
   
      
    
  }

  Future<Diariesdata?> DiariUserApi() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    var tok = share.getString('token');
    final result = await dio.post( url.diariesend,
        options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $tok '
        }));
        print("//////*****$result");
    return Diariesdata.fromJson(result.data); 
  }

  Future<Updatedata?>updateUserApi(FormData formdata)async{
    try {
          SharedPreferences share = await SharedPreferences.getInstance();

var tok = share.getString('token');
      final result = await dio.post(url.updateend, data: formdata,
      options: Options(headers: {
        'Content': 'application/json',
        'Accepts': 'application/json',
        'Authorization': 'Bearer $tok '
      }));
      print("000000000$result");
      return Updatedata.fromJson((result.data));
    } on DioException 
    catch (e) {
      print(e);
      
    }
   
      
    
  }
  Future<Logoutdata?> logoutUserApi() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    var tok = share.getString('token');
    final result = await dio.get(url.baseUrl + url.logoutend,
        options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $tok '
        }));
     
    return Logoutdata.fromJson(result.data); 
  }


}