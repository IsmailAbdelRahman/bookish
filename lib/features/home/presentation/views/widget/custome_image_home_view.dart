import 'package:bookly/core/utils/assetes_const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeItmeImageHomeView extends StatelessWidget {
  const CustomeItmeImageHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: CImageData.imageNetworkTest,
          errorWidget: (context, url, error) =>
              const Center(child: Icon(FontAwesomeIcons.image)),
        ),
      ),
    );
  }
}
