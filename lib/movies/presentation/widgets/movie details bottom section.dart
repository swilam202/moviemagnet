import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/recommendations controller/recommendations cubit.dart';
import '../controller/recommendations controller/recommendations state.dart';
import 'details page grid view item.dart';
import 'movie details bottom section shimmer.dart';

class MovieDetailsBottomSection extends StatelessWidget {
  const MovieDetailsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationsCubit, RecommendationsState>(
      builder: (context, state) {
        if (state is RecommendationsSuccessState) {
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.movies.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 6 / 8,
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return DetailsPageGridViewItem(movie: state.movies[index]);
            },
          );
        } else if (state is RecommendationsFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const MovieDetailsBottomSectionShimmer();
        }
      },
    );
  }
}
