import 'package:bookly/core/utils/styles_font.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_list_view_body_home_view.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_listviewbody_vertical.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //  return const CustomListViewBodyHomeView();

    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 10,
            ),
            const CustomListViewBodyHomeView(),
            const SizedBox(
              height: 20,
            ),
            Text(
              " The Books here : ",
              //    style: Theme.of(context).textTheme.bodyLarge,
              style:
                  TextStylesFont.textStyles17.copyWith(color: Colors.white70),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      const SliverFillRemaining(child: CustomListViewBodyVertical()),
    ]);
  }
}
