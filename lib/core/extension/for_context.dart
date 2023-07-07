import 'package:flutter/cupertino.dart';

// ---- Extantion to use height and width with mediaquery ----

extension ForContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get w => mq.size.width;
  double get h => mq.size.height;
}
