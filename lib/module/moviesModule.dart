class movieModule
{
   int id ;
   String movieName;
   String moviePicture;
   String movieYear;
   double movieEvalutionIMDB;
   double movieEvalutionRoTTENTOMATO;
   String movieClassfication;
   String movieDigOut;
   String movieAbbreviated;


  movieModule({this.id,this.movieName,this.movieYear , this.moviePicture, this.movieEvalutionIMDB , this.movieEvalutionRoTTENTOMATO, this.movieClassfication, this.movieDigOut,this.movieAbbreviated });

  factory movieModule.fromJson(Map<String,dynamic> movieJsonData)
  {
   return movieModule(
     id:movieJsonData['id'] ,
     movieName: movieJsonData['movieName'],
     moviePicture: movieJsonData['moviePicture'],
     movieClassfication: movieJsonData['movieClassfication'],
     movieAbbreviated: movieJsonData['movieAbbreviated'],
     movieEvalutionIMDB: movieJsonData['movieEvalutionIMDB'],
     movieEvalutionRoTTENTOMATO: movieJsonData['movieEvalutionRoTTENTOMATO'],
     movieDigOut: movieJsonData['movieDigOut'],
     movieYear: movieJsonData['movieYear'] as String,
   );
  }

  Map<dynamic ,dynamic>toJson()
  {
    return{
      //'id' :id,
      'movieName':movieName,
      'moviePicture':moviePicture,
      'movieClassfication':movieClassfication,
      'movieAbbreviated':movieAbbreviated ,
      'movieEvalutionIMDB':movieEvalutionIMDB ,
      'movieEvalutionRoTTENTOMATO':movieEvalutionRoTTENTOMATO ,
      'movieDigOut':movieDigOut,
      'movieYear':movieYear
    };
  }


}