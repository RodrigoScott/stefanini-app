import 'dart:async';

import 'package:flutter/cupertino.dart';

class Debouncer {
  final int milliseconds;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    Timer(Duration(microseconds: milliseconds), action);
  }
}
