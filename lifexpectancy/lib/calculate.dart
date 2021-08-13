import 'package:lifexpectancy/userdata.dart';

class Calculete {
  UserData _userData;
  Calculete(this._userData);

  double calculated() {
    double result;
    result = 90 + _userData.sportDay - _userData.smokingSigarette;
    result = result + (_userData.height / _userData.weight);

    if (_userData.chosenGender == 'FEMALE"') {
      return result + 3;
    } else {
      return result;
    }
  }
}
