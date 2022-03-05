import 'package:flutter/material.dart';
import 'package:movie_app/constants/text_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow overflow;
  final bool centered;
  final Color? color;

  /// this is heading 1 text, size = 32, weight = 600
  AppText.heading1(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle1,
        super(key: key);

  /// this is heading 2 text, size = 28, weight = 600
  AppText.heading2(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle2,
        super(key: key);

  /// this is heading 3 text, size = 24, weight = 600
  AppText.heading3(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle3,
        super(key: key);

  /// this is heading 4 text, size = 20, weight = 600
  AppText.heading4(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle4,
        super(key: key);

  /// this is heading 5 text, size = 16, weight = 600
  AppText.heading5(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle5,
        super(key: key);

  /// this is heading 6 text, size = 12, weight = 600
  AppText.heading6(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = headingStyle6,
        super(key: key);

  /// this is body 1 text, size = 14, weight = 500
  AppText.body1(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = bodyStyle1,
        super(key: key);

  /// this is body 2 text, size = 10, weight = 500
  AppText.body2(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = bodyStyle2,
        super(key: key);

  /// this is caption text, size = 10, weight = 400
  AppText.caption(this.text,
      {Key? key,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color})
      : style = captionStyle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : TextAlign.left,
    );
  }
}
