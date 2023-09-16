import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_item.dart';
import 'package:flutter/material.dart';

class BookItemDetailsScetion extends StatelessWidget {
  const BookItemDetailsScetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 36,
        ),
        const SizedBox(
          width: 162,
          child: BooksItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: const Color(0xff707070),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(height: 14),
        const BookActionButton(),
      ],
    );
  }
}
