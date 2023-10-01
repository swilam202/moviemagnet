import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/up coming controller/up coming cubit.dart';
import '../controller/up coming controller/up coming state.dart';
import '../pages/movies list page.dart';
import 'home page list view shimmer.dart';
import 'home page list view.dart';

class UpComingSection extends StatelessWidget {
  const UpComingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpComingCubit, UpComingState>(
      builder: (context, state) {
        if (state is UpComingSuccessState) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Up Coming',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MovieListPage(
                            movies: state.movies,
                            title: 'Up Coming',
                          ),
                        ),
                      );
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
        } else if (state is UpComingFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const HomePageListViewShimmer();
        }
      },
    );
  }
}
