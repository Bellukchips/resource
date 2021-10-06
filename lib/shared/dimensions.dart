import 'package:flutter/widgets.dart';

class Dimens {
  static const double dp2 = 2.0;
  static const double dp4 = 4.0;
  static const double dp8 = 8.0;
  static const double dp6 = 6.0;
  static const double dp10 = 10.0;
  static const double dp12 = 12.0;
  static const double dp14 = 14.0;
  static const double dp16 = 16.0;
  static const double dp18 = 18.0;
  static const double dp20 = 20.0;
  static const double dp22 = 22.0;
  static const double dp24 = 24.0;
  static const double dp32 = 32.0;
  static const double dp34 = 34.0;
  static const double dp36 = 36.0;
  static const double dp38 = 38.0;
  static const double dp40 = 40.0;
  static const double dp60 = 60.0;
  static const double dp100 = 100.0;

  static const double horizontalPadding = 14.0;
  static const double roundButton = 4.0;
  static const double roundImage = 10.0;
  static const double roundCard = 5.0;
  static const double paddingLabelText = 3.0;
  static const double bodyPadding = 15.0;

  static const double textFieldRadius = 13.0;
  static const double buttonRadius = 13.0;

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
