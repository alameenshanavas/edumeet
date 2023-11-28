import 'package:dio/dio.dart';
import 'package:flutter_edumeet/models/detailsmodel.dart';


import 'package:flutter_edumeet/models/loginmodel.dart';
import 'package:flutter_edumeet/models/profilemodel.dart';
import 'package:flutter_edumeet/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Apiclass{

  final dio = Dio();
  final url = URL();

  Apiclass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
      
    );
  }
  


  Future<Logindata?>loginUserApi(FormData formdata)async{
    try {
      final result = await dio.post(url.loginend, data: formdata);
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

}