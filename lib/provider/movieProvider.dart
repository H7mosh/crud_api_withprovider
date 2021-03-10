import 'dart:io';
import 'package:crud_api_withprovider/module/moviesModule.dart';
import 'package:crud_api_withprovider/services/movieService.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class MovieProvider with ChangeNotifier
{
  File movieImage;
  Future get_movieImage(ImageSource src)async
  {
    var pickedImage=await ImagePicker().getImage(source: src);
    if(pickedImage != null)
      {
        movieImage =File(pickedImage.path);
        notifyListeners();
      }
  }

 addMovieToDatabase( String movieName ,String  movieAbbreviated,String movieClassfication,double movieEvalutionIMDB,double movieEvalutionRoTTENTOMATO,String movieDigOut,String movieYear)
 {
   movieModule _movieModule=movieModule(
     movieName: movieName,
     movieAbbreviated: movieAbbreviated,
     movieClassfication: movieClassfication,
     movieEvalutionIMDB: double.parse(movieEvalutionIMDB.toString()),
     movieEvalutionRoTTENTOMATO:double.parse(movieEvalutionIMDB.toString()),
     movieDigOut: movieDigOut,
     movieYear: movieYear,
     moviePicture: movieImage.path.toString(),
   );
   movieServices().addMovie(_movieModule);
   print(_movieModule.movieEvalutionRoTTENTOMATO);
   print(_movieModule.moviePicture);
   print(_movieModule.movieName);
   print(_movieModule.movieYear);
   print(_movieModule.movieEvalutionIMDB);
   print(_movieModule.movieAbbreviated);
   print(_movieModule.movieDigOut);
   print(_movieModule.movieClassfication);
 }
}