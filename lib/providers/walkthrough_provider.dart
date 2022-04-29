import 'package:flutter/foundation.dart';
import 'package:uberr/models/adress.dart';

class WalkthroughProvider extends ChangeNotifier {
  Adress? pickuplocation;

  void updatepikuplocationadress(Adress pickupadress) {
    pickuplocation = pickupadress;
    notifyListeners();
  }

  int _currentPage = 0;
  void onPageChange(int newPage) {
    _currentPage = newPage;
    notifyListeners();
  }

  int get currentPageValue => _currentPage;
}
