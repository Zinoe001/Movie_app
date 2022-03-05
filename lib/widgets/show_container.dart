import 'package:flutter/material.dart';
import 'package:movie_app/utils/color.dart';
import 'package:movie_app/utils/tex.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ShowContainer extends StatelessWidget {
  const ShowContainer({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 175,
              width: 275,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.pexels.com/photos/2346001/pexels-photo-2346001.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                fit: BoxFit.fill,
                // errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            AppText.heading6(
              title,
              color: kPrimariyColor,
            ),
          ],
        ),
      ),
    );
  }
}
