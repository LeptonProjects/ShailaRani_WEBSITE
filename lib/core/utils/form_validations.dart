import 'package:intl/intl.dart';

class FormFieldValidation {
  static String? validateInput(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a value';
    }
    return null; // Return null if the input is valid
  }

  static String? isDateValid(String? input) {
    try {
      // Parse the input string into a DateTime object
      if (input == null) {
        return 'Please select a valid Date';
      }
      DateFormat("dd-MM-yyyy").parseStrict(input);
      return null;
    } catch (e) {
      print(e);
      return 'Please select a valid Date';
      // If parsing or validation fails, return false
    }
  }
}
