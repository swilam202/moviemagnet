import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/repository/movies%20repository.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20state.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view%20item.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view.dart';
import 'package:moviemagnet/movies/presentation/widgets/now%20playing%20section.dart';
import 'package:moviemagnet/movies/presentation/widgets/now%20playing%20shimmer.dart';

import '../controller/now playing controller.dart/now playing cubit.dart';
import '../controller/now playing controller.dart/now playing state.dart';
import '../widgets/home page list view shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ElevatedButton(
              onPressed: () async {
                await BlocProvider.of<NowPlayingCubit>(context).getMovies();
                await BlocProvider.of<PopularCubit>(context).getMovies();
              },
              child: Text('Press'),
            ),
            BlocBuilder<NowPlayingCubit, NowPlayingState>(
              builder: (context, state) {
                if (state is NowPlayingSuccessState) {
                  return NowPlayingSection(movies: state.movies);
                } else if (state is NowPlayingFailureState) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else {
                  return const NowPlayingShimmer();
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
             BlocBuilder<PopularCubit, PopularState>(
              builder: (context, state) {
                if (state is PopularSuccessState) {
                  return HomePageListView(movies: state.movies);
                } else if (state is PopularFailureState) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else {
                  return //Center(child: CircularProgressIndicator(),);
                   HomePageListViewShimmer();
                }
              },
            ),
            const SizedBox(
              height: 40,
            ),/*
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
