import 'package:bookly/features/home/presentation/views/widget/list_book_detalis.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("the books  very nice ..."),
        SizedBox(
          height: 15,
        ),
        ListBookDetalis(),
      ],
    );
  }
}
