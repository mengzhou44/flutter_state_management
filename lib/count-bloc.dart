import 'dart:async';

import 'package:flutter/foundation.dart';

class CountBloc {
  CountBloc({@required this.count}) {
     _countController.add(this.count);
  }
  int count;

  StreamController<int> _countController = StreamController<int>();

  Stream<int> get countStream => _countController.stream;

  void dispose() {
    _countController.close();
  }

  void addCount() {
    count = count + 1;
    print(count);
    _countController.add(count);
  }
}
