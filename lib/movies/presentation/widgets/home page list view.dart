import 'package:flutter/material.dart';

import 'home page list view item.dart';

class HomePageListView extends StatelessWidget {
  const HomePageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const HomePageListViewItem();
        },
      ),
    );
  }
}
