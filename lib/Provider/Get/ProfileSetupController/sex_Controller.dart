import 'package:get/get.dart';

class ProfileSetupController extends GetxController {
  bool isMale = false;
  bool isFemale = false;

  setMale(bool value) {
    isMale = value;
    isFemale = false;
  }

  setFemale(bool value) {
    isMale = false;
    isFemale = true;
  }
}
