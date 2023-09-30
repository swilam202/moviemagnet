import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/core/network/api%20constants.dart';
import 'package:moviemagnet/movies/data/models/movie%20model.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20movie%20detils%20usecase.dart';
import 'package:moviemagnet/movies/presentation/pages/movie%20details%20page.dart';

import '../../../core/services/service locator.dart';
import '../../domain/entites/movie.dart';

class HomePageListViewItem extends StatelessWidget {
  const HomePageListViewItem({super.key,required this.movie,});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MovieDetailsPage(id: movie.id)));
          
          
      },
      child: AspectRatio(
        aspectRatio: 6 / 8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              image: NetworkImage(
                APIConstants.getImageLink(movie.backdropPath),
              ),
              fit: BoxFit.fill,
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.title,maxLines: 2,textAlign: TextAlign.center,overflow: TextOverflow.fade,style: GoogleFonts.actor(fontWeight: FontWeight.bold),),
            ),),
        ),
        
      ),
    );
  }
}
