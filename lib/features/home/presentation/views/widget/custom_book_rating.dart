import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment});
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: const [
          Icon(
            FontAwesomeIcons.solidStar,
            size: 15,
            color: Colors.amber,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("(250) K "),
          )
        ]);
  }
}
