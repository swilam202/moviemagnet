

import 'package:flutter/material.dart';
import 'package:moviemagnet/movies/domain/entites/recommendations.dart';

import '../../../core/network/api constants.dart';
import '../pages/movie details page.dart';

class DetailsPageGridViewItem extends StatelessWidget {
  const DetailsPageGridViewItem({super.key,required this.movie,});
  final MovieRecommendations movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MovieDetailsPage(id: movie.id)));
          
          
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
            image: NetworkImage(
              APIConstants.getImageLink(movie.image!),
            ),
            fit: BoxFit.fill,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8),
       
      ),
    );
 
  }
}