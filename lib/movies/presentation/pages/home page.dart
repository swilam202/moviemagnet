import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/repository/movies%20repository.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/home%20page%20controller.dart/home%20page%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/home%20page%20controller.dart/home%20page%20state.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view%20item.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view.dart';
import 'package:moviemagnet/movies/presentation/widgets/now%20playing%20section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
      return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ElevatedButton(onPressed: ()async{
              await BlocProvider.of<HomePageCubit>(context).getMovie();
            }, child: Text('Press')),
             BlocBuilder<HomePageCubit,HomePageState>(
              builder: (context,state){
                if(state is HomePageSuccessState){
                  return  NowPlayingSection(movies: state.nowPlayingMovies);
                }
                else if(state is HomePageFailureState){
                  return Center(child: Text(state.errorMessage),);
                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }

              },

            ),
             
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Text(
                    'See more',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<HomePageCubit,HomePageState>(
              builder: (context,state){
                if(state is HomePageSuccessState){
                  return  HomePageListView(movies: state.nowPlayingMovies);
                }
                else if(state is HomePageFailureState){
                  return Center(child: Text(state.errorMessage),);
                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }

              },

            ),
                        /*const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top rated',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Text(
                    'See more',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const HomePageListView(),*/

          ],
        ),
      ),
    );
 
     }
}
