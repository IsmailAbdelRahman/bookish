import 'package:bookly/features/home/presentation/views/widget/custom_body_book_details.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/material.dart';

class BodyBookDetailsView extends StatelessWidget {
  const BodyBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBarBookDetails(),
                SizedBox(
                  height: 25,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
