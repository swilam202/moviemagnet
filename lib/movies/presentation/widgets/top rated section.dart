import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/top rated controller.dart/top rated cubit.dart';
import '../controller/top rated controller.dart/top rated state.dart';
import '../pages/movies list page.dart';
import 'home page list view shimmer.dart';
import 'home page list view.dart';

class TopRatedSection extends StatelessWidget {
  const TopRatedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedCubit, TopRatedState>(
      builder: (context, state) {
        if (state is TopRatedSuccessState) {
          return Column(
            children: [
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MovieListPage(movies: state.movies,title: 'Top Rated',)));
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
        } else if (state is TopRatedFailureState) {
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
