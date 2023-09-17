// import 'package:bookly_app/core/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          // return  BookItem();
          return const SizedBox();
        },
      ),
    );
  }
}
