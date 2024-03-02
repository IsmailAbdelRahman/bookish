import 'package:bookly/features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: BodyBookDetailsView());
  }
}
