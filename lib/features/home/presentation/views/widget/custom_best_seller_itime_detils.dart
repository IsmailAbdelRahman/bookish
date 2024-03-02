import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/assetes_const.dart';
import 'package:bookly/core/utils/styles_font.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBestSellerItimeDetils extends StatelessWidget {
  const CustomBestSellerItimeDetils({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.bookDetailsView),
      child: SizedBox(
          height: 100,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: CImageData.imageNetworkTest,
                    errorWidget: (context, url, error) =>
                        const Center(child: Icon(FontAwesomeIcons.neos)),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStylesFont.textStyles17.copyWith(),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'J.K. Rowling',
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: TextStylesFont.textStyles17.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(flex: 5),
                        const BookRating(),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
