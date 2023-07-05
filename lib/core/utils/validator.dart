/*========================Email Validator==============================================*/
import 'package:auth_test/core/theme/app_string.dart';

class Validator {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return AppString.strEmptyValidate;
    }
    if (!RegExp(r"^[0-9+]").hasMatch(value)) {
      final bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (!emailValid) {
        return AppString.strEmailValidate;
      }
    }
    return null;
  }

  static String? validatePassword(String value) {
   if (value.isEmpty) {
      return AppString.strEmptyValidate;
    } else if (value.length < 8) {
      return AppString.strPasswordLenght;
    }
    return null;
  }
}
