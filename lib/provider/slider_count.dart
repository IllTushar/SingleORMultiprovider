import 'package:flutter/foundation.dart';

class sliderCount with ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  void setValue(double _value) {
    this._value = _value;
    notifyListeners();
  }
}
