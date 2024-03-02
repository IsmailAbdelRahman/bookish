import 'package:bookly/features/home/presentation/views/widget/custom_best_seller_itime_detils.dart';
import 'package:flutter/material.dart';

class CustomListViewBodyVertical extends StatelessWidget {
  const CustomListViewBodyVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //   shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      itemCount: 5,
      itemBuilder: ((context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: CustomBestSellerItimeDetils(),
          )),
      //  SliverFillRemaining()
    );
  }
}
