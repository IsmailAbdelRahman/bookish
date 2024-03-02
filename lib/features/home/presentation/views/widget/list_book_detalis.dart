import 'package:bookly/features/home/presentation/views/widget/custome_image_home_view.dart';
import 'package:flutter/material.dart';

class ListBookDetalis extends StatelessWidget {
  const ListBookDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomeItmeImageHomeView(),
            )),
        //  SliverFillRemaining()
      ),
    );
  }
}
