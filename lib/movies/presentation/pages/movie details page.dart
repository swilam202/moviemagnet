import 'package:flutter/material.dart';


class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key,required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(id.toString())),
    );
  }
}