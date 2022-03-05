import 'package:flutter/material.dart';
import 'package:movie_app/utils/color.dart';
import 'package:movie_app/utils/tex.dart';
import 'package:movie_app/widgets/movie_container.dart';
import 'package:movie_app/widgets/show_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText.heading2(
                          "Movies",
                          color: kPrimariyColor,
                        ),
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: kPrimariyColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(0),
                    children: [
                      AppText.heading3(
                        "Popular TV Shows",
                        color: kPrimariyColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) =>
                                const ShowContainer(
                                    title: "The Winter Solider")),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText.heading3(
                        "Trending Movies",
                        color: kPrimariyColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) =>
                                const MoviesContainer(
                                    title: "The Winter Solider")),
                      ),
                      AppText.heading3(
                        "New Movies",
                        color: kPrimariyColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) =>
                                const MoviesContainer(
                                    title: "The Winter Solider")),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
