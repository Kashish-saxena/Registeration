class RegisterValidation {
  static bool isNameValid(String name) {
    String pattern = r'^[a-z A-Z,.\-]+$';
    RegExp regExp = RegExp(pattern);
    if (name.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(name)) {
      return false;
    }
    return true;
  }

  static bool isEmailValid(String email) {
    String pattern = r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
    RegExp regExp = RegExp(pattern);
    if (email.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(email)) {
      return false;
    }
    return true;
  }

  static bool isPhoneValid(String phone) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (regExp.hasMatch(phone)) {
      return true;
    }
    return false;
  }

  static bool isPasswordValid(String password) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regExp = RegExp(pattern);
    if (regExp.hasMatch(password)) {
      return true;
    }
    return false;
  }

  static bool isConfirmValid(String password) {
    if (password.isNotEmpty) {
      return true;
    }
    return false;
  }
}
