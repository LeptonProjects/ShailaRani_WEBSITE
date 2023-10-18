class FormFieldValidation {
  static String? validateInput(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a value';
    }
    return null; // Return null if the input is valid
  }
}
