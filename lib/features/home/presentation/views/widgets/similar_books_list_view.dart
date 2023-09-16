import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SimilarBooksItem();
        },
      ),
    );
  }
}
