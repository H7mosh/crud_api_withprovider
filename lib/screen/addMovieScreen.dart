import 'dart:io';

import 'package:crud_api_withprovider/provider/movieProvider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class addMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController C_movieName=new TextEditingController();
    TextEditingController C_movieClassfication=new TextEditingController();
    TextEditingController C_movieAbbreviated=new TextEditingController();
    TextEditingController C_movieEvalutionIMDB=new TextEditingController();
    TextEditingController C_movieEvalutionRoTTENTOMATO=new TextEditingController();
    TextEditingController C_movieDigOut=new TextEditingController();
    TextEditingController C_movieYear=new TextEditingController();
    var provider=Provider.of<MovieProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Movie Screen'),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
        child: ListView(
          children: [
            IconButton(
                icon: Icon(Icons.image),
                onPressed: (){
                  provider.get_movieImage(ImageSource.gallery);
                }),
            Container(
              width: 50,
              height: 100,
              child:provider.movieImage==null? Text("No Image"):Image.file(provider.movieImage),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieName,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieClassfication,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movieClassfication',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieAbbreviated,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie Abbreviated',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieEvalutionIMDB,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie Evalution on IMDB',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieEvalutionRoTTENTOMATO,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie Evalution on Rotten Tomato',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieDigOut,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie DigOut',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: C_movieYear,
                decoration:InputDecoration(
                  filled: true,
                  hintText: 'movie Year',
                ),
              ),
            ),
            RaisedButton(
              child: Text('Add'),
              onPressed: ()async
              {
                await provider.addMovieToDatabase(C_movieName.text,C_movieAbbreviated.text,C_movieClassfication.text,double.tryParse(C_movieEvalutionIMDB.text.toString()),double.tryParse(C_movieEvalutionRoTTENTOMATO.text.toString()),C_movieDigOut.text,C_movieYear.text);
                print(
                  "movie name :${C_movieEvalutionIMDB.text}"

                );
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
