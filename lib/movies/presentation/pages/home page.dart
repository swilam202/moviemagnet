import 'package:flutter/material.dart';

import '../widgets/now playing section.dart';
import '../widgets/popular section.dart';
import '../widgets/top rated section.dart';
import '../widgets/up coming section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            NowPlayingSection(),
            SizedBox(height: 40),
            PopularSection(),
            SizedBox(height: 40),
            TopRatedSection(),
            SizedBox(height: 40),
            UpComingSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
