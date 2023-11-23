import 'package:dio/dio.dart';
import 'package:flutter_edumeet/eduprofile.dart';
import 'package:flutter_edumeet/loginmode.dart';
import 'package:flutter_edumeet/url.dart';

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
  getdata() async {
    final result = await dio.get(url.baseUrl+url.profileend);
    final getproduct = Profile.fromjson(result.data);
    print('------------$getproduct');
    if (getproduct.data !=null) {
      
    }else{
      
    }
  }
}