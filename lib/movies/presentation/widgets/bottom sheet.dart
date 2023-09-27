/*import 'package:flutter/material.dart';
import 'package:moviemagnet/core/network/api%20constants.dart';

import '../../data/models/movie model.dart';


void showCustomBottomSheet(BuildContext context,List<MovieModel>movies){
  showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.black.withOpacity(0.4),
                context: context, 
                useSafeArea: true,
               builder: (context){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      color: Colors.red,
                      child: Text('djahfdjkfha'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: movies.length,
                        itemBuilder: (context,index){
                          return Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            color: Colors.black.withOpacity(0.5),
                            child: Row(
                              children: [
                                SizedBox(
                          height: 100,
                          
                          child: AspectRatio(
                            aspectRatio: 5/8,
                            child: Image.network(APIConstants.getImageLink(movies[index].backdropPath),fit: BoxFit.fill,)),
                          ),
                          Text(movies[index].title),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
               });
}*/