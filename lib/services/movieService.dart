import 'dart:convert';

import 'package:crud_api_withprovider/module/moviesModule.dart';
import 'package:http/http.dart' as http;
class movieServices
{

  Future<String> addMovie(movieModule _movieModule)async
  {
    final response =await http.post("http://192.168.100.168/api/movieApi/addMovieToDB.php",body:_movieModule.toJson());
    if(response.statusCode==200)
      {
        return response.body;

      }
    else {
      return 'error in the addMovie Services';
    }
  }

}