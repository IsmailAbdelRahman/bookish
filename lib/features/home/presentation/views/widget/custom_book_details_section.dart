import 'package:bookly/features/home/presentation/views/widget/custom_book_rating.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_books_action.dart';
import 'package:bookly/features/home/presentation/views/widget/custome_image_home_view.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          // بيلعب دور الوديث
          padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.2),
          child: const CustomeItmeImageHomeView(),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'The Jungle Book',
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const BooksAction(),
      ],
    );
  }
}
