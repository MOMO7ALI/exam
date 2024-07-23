import 'package:flutter/material.dart';

import 'book_card.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        BookCard(
          imageUrl: 'assets/images/Image Placeholder 2.png',
          title: 'The Speaker',
          author: 'Traci Chee',
        ),
        BookCard(
          imageUrl: 'assets/images/Image Placeholder 400x600.png',
          title: 'The Silence',
          author: 'Mark Alpert',
        ),
        BookCard(
          imageUrl: 'assets/images/Image Placeholder 2.png',
          title: 'The Speaker',
          author: 'Traci Chee',
        ),
        BookCard(
          imageUrl: 'assets/images/Image Placeholder 400x600.png',
          title: 'The Silence',
          author: 'Mark Alpert',
        ),
      ],
    );
  }
}
