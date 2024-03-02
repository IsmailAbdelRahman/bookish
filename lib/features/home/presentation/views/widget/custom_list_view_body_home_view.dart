import 'package:bookly/features/home/presentation/views/widget/custome_image_home_view.dart';
import 'package:flutter/material.dart';

class CustomListViewBodyHomeView extends StatelessWidget {
  const CustomListViewBodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: CustomeItmeImageHomeView(),
            )),
        //  SliverFillRemaining()
      ),
    );
  }
}
