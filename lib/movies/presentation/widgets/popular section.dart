import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/movies/presentation/pages/movies%20list%20page.dart';

import '../controller/popular controller/popular cubit.dart';
import '../controller/popular controller/popular state.dart';
import 'bottom sheet.dart';
import 'home page list view shimmer.dart';
import 'home page list view.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularCubit, PopularState>(
      builder: (context, state) {
        if (state is PopularSuccessState) {
          return Column(
            children: [
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieListPage(movies: state.movies,title: 'Popular',)));
                    },
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
              HomePageListView(movies: state.movies),
            ],
          );
        } else if (state is PopularFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return //Center(child: CircularProgressIndicator(),);
              const HomePageListViewShimmer();
        }
      },
    );
  }
}
