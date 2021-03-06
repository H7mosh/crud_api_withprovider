import 'package:crud_api_withprovider/provider/movieProvider.dart';
import 'package:crud_api_withprovider/screen/addMovieScreen.dart';
import 'package:crud_api_withprovider/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider<MovieProvider>(
           create: (_)=>MovieProvider(),
       )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: addMovieScreen(),
      ),
    );
  }
}
