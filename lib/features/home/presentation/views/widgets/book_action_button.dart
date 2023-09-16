import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomButton(
          leftSideRadius: 16,
          text: '19.99€',
          onPressed: () {},
          textStyle: Styles.textStyle16.copyWith(
            color: Colors.black,
          ),
          color: const Color(0xffffffff),
        ),
        CustomButton(
          rightSideRadius: 16,
          text: 'Free Preview',
          onPressed: () {},
          textStyle: Styles.textStyle16.copyWith(
            color: const Color(0xffffffff),
          ),
          color: const Color(0xffEF8262),
        ),
      ],
    );
  }
}
