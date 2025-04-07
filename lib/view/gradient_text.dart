import 'package:flutter/cupertino.dart';

import '../gen/colors.gen.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final List<Color> colors;

  GradientText({
    super.key,
    required this.text,
    required this.style,
    List<Color>? colors,
  }) : colors =
           colors ?? [ColorName.white, ColorName.white, ColorName.white];

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
            colors: colors,
            tileMode: TileMode.clamp,
          ).createShader(bounds),
      child: Text(text, style: style.copyWith(color: ColorName.white)),
    );
  }
}
