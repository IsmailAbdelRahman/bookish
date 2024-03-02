import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/assetes_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 100, child: Image.asset(CImageData.logo)),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.serchview);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
              ))
        ],
      ),
    );
  }
}
