import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class GeneralViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  List<bool>? bottomButtons;

  void onInit() {
    initializeBottomButtons();
  }

  void initializeBottomButtons() =>
      bottomButtons = [true, false, false, false, false];

  void onButtonPressedHandler(BuildContext context, int index) {
    setIndex(index);
    clearBottomButtons();
    setBottomButtonToTrue(index);

    notifyListeners();
  }

  void clearBottomButtons() {
    for (int i = 0; i < (bottomButtons?.length as int); i++) {
      bottomButtons?[i] = false;
    }
  }

  void setBottomButtonToTrue(int index) => bottomButtons?[index] = true;
}
