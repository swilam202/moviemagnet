import 'package:flutter/material.dart';

import 'movies/presentation/pages/splash page.dart';

void main() {
  runApp(const MovieMagnet());
}

class MovieMagnet extends StatelessWidget {
  const MovieMagnet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(96, 72, 71, 71),
        brightness: Brightness.dark,
      ),
      home: const SplashPage(),
    );
  }
}



