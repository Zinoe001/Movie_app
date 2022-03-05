import 'package:flutter/material.dart';
import 'package:movie_app/utils/color.dart';
import 'package:movie_app/utils/tex.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: AppText.heading1(
            "Movies",
            color: kPrimariyColor,
          ))
        ],
      ),
    );
  }
}
