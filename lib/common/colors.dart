import 'package:from_css_color/from_css_color.dart';

class PrimaryColors {
  const PrimaryColors();

  static final lightRed = fromCssColor('hsl(0, 100%, 67%)');
  static final orangeyYellow = fromCssColor('hsl(39, 100%, 56%)');
  static final greenTeal = fromCssColor('hsl(166, 100%, 37%)');
  static final cobaltBlue = fromCssColor('hsl(234, 85%, 45%)');
}

class GradientColors {
  const GradientColors();

  static final lightSlateBlue = fromCssColor('hsl(252, 100%, 67%)');
  static final lightRoyalBlue = fromCssColor('hsl(241, 81%, 54%)');

  static final violetBlue = fromCssColor('hsla(256, 72%, 46%, 1)');
  static final persianBlue = fromCssColor('hsla(241, 72%, 46%, 0)');
}

class NeutralColors {
  const NeutralColors();

  static final paleBlue = fromCssColor('hsl(221, 100%, 96%)');
  static final lightLavender = fromCssColor('hsl(241, 100%, 89%)');
  static final darkGrayBlue = fromCssColor('hsl(224, 30%, 27%)');
}
