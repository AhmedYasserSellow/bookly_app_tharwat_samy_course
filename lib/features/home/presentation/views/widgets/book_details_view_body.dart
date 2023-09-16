import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          SizedBox(
            height: 36 / 812 * MediaQuery.of(context).size.height,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 162 / 375,
            child: const BooksItem(),
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
          const BookRating()
        ],
      ),
    );
  }
}
