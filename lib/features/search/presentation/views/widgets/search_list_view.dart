import 'package:bookly_app/core/widgets/book_item.dart';
import 'package:bookly_app/core/widgets/error_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/view_models/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsetsDirectional.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookItem(
                  bookModel: state.books[index],
                );
              },
            ),
          );
        } else if (state is SearchLoading) {
          return const LoadingIndicator();
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomErrorWidget(
            errMessage: 'No Results',
          );
        }
      },
    );
  }
}
