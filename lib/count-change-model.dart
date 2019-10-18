import 'package:flutter/foundation.dart';

class CountChangeModel with ChangeNotifier {
  CountChangeModel({this.value = 0});
  int value;

  update(int value) {
    print(value);
    this.value = value;
    notifyListeners();
  }
}
