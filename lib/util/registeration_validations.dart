class RegisterValidation {
  // static bool isNameValid(String name) {
  //   String pattern = r'([a-zA-Z])';
  //   RegExp regExp = RegExp(pattern);
  //   if (!regExp.hasMatch(name)) {
  //     return true;
  //   }
  //   return false;
  // }

  static bool isNameValid(String name) {
    if (name.isEmpty) {
      return false;
    } else if (!name.contains("@")) {
      return false;
    }
    return true;
  }

  static bool isEmailValid(String email) {
    if (email.isEmpty) {
      return false;
    } else if (!email.contains("@")) {
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
    if (password.isNotEmpty) {
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
