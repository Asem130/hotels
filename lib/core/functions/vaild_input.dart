import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val.trim())) {
      return "not valid username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val.trim())) {
      return "not valid email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val.trim())) {
      return "not valid phone";
    }
  }

  if (val.trim().isEmpty) {
    return "can't be Empty";
  }

  if (val.trim().length < min) {
    return "can't be less than $min";
  }

  if (val.trim().length > max) {
    return "can't be larger than $max";
  }
}
