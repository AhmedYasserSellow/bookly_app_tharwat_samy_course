import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchTextField(),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}