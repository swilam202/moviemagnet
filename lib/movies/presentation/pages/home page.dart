import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviemagnet/movies/data/data%20source/movie%20remote%20data%20source.dart';
import 'package:moviemagnet/movies/data/repository/movies%20repository.dart';
import 'package:moviemagnet/movies/domain/repository/base%20movie%20repository.dart';
import 'package:moviemagnet/movies/domain/usecases/get%20now%20playing%20movies%20usecase.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/popular%20controller/popular%20state.dart';
import 'package:moviemagnet/movies/presentation/controller/top%20rated%20controller.dart/top%20rated%20cubit.dart';
import 'package:moviemagnet/movies/presentation/controller/top%20rated%20controller.dart/top%20rated%20state.dart';
import 'package:moviemagnet/movies/presentation/controller/up%20coming%20controller/up%20coming%20cubit.dart';
import 'package:moviemagnet/movies/presentation/widgets/bottom%20sheet.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view%20item.dart';
import 'package:moviemagnet/movies/presentation/widgets/home%20page%20list%20view.dart';
import 'package:moviemagnet/movies/presentation/widgets/now%20playing%20section.dart';
import 'package:moviemagnet/movies/presentation/widgets/now%20playing%20shimmer.dart';
import 'package:moviemagnet/movies/presentation/widgets/popular%20section.dart';
import 'package:moviemagnet/movies/presentation/widgets/top%20rated%20section.dart';
import 'package:moviemagnet/movies/presentation/widgets/upComingSection.dart';

import '../controller/now playing controller/now playing cubit.dart';
import '../controller/now playing controller/now playing state.dart';
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
            
            NowPlayingSection(),
            const SizedBox(
              height: 40
            ),
            const PopularSection(),
            const SizedBox(
              height: 40
            ),
       TopRatedSection(),
       const SizedBox(
              height: 40
            ),

            const SizedBox(
              height: 40
            ),
            UpComingSection(),
            const SizedBox(
              height: 40
            ),
               ],
        ),
      ),
    );
  }
}
