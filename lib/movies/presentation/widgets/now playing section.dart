import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/now playing controller/now playing cubit.dart';
import '../controller/now playing controller/now playing state.dart';
import 'now playing list view item.dart';
import 'now playing shimmer.dart';

class NowPlayingSection extends StatelessWidget {
  const NowPlayingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowPlayingCubit, NowPlayingState>(
      builder: (context, state) {
        if (state is NowPlayingSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // fromLTRB
                        Colors.black,
                        Colors.black,
                        Colors.black,
                        Colors.transparent,
                      ],
                      stops: [0, 0.2, 0.4, 1],
                    ).createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height),
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: double.infinity,
                      autoPlay: true,
                    ),
                    items: state.movies.map((e) {
                      return NowPlayingListViewItem(movie: e);
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 15,
                        ),
                        Text(
                          '  Now Playing',
                          style: GoogleFonts.lato(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state is NowPlayingFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const NowPlayingShimmer();
        }
      },
    );
  }
}
