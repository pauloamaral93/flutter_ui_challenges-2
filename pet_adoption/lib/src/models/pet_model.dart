import 'package:flutter/material.dart';

class PetModel with ChangeNotifier {

  String _assetImage;
  String _typePet = 'Dogs';

  String get assetImage => this._assetImage;
  String get typePet => this._typePet;

  set assetImage(String img) {
    this._assetImage = img;
    notifyListeners();
  }

  set typePet(String pet) {
    this._typePet = pet;
    notifyListeners();
  }



}


