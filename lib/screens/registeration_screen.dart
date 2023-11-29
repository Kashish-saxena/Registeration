import 'package:flutter/material.dart';
import 'package:flutter_project/screens/login_screen.dart';
import 'package:flutter_project/util/color_constants.dart';
import 'package:flutter_project/util/registeration_validations.dart';
import 'package:flutter_project/util/string_constants.dart';
import 'package:flutter_project/widgets/common_button.dart';
import 'package:flutter_project/widgets/common_text.dart';
import 'package:flutter_project/widgets/common_textfield.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key, required String data});

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  final _registerationKey = GlobalKey<FormState>();
  bool isNameValid = true;
  bool isEmailValid = true;
  bool isPhoneValid = true;
  bool isPasswordValid = true;
  bool isConfirmValid = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      backgroundColor: ColorConstants.blueColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.blueColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          color: ColorConstants.whiteColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _registerationKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringConstants.signUp,
                  style: TextStyle(
                    color: ColorConstants.whiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextWidget(text: "Name"),
                TextFieldWidget(
                  prefixIcon: Icons.person,
                  hint: "",
                  hintStyle: TextStyle(color: ColorConstants.whiteColor),
                  obscureText: false,
                  textEditingController: nameController,
                  enabledColor: isNameValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  errorColor: isNameValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  onChange: (val) {
                    print("val is $val");
                    if (!RegisterValidation.isNameValid(val)) {
                      setState(() {
                        isNameValid = false;
                        print("isNameValid in if is $isNameValid");
                      });
                    } else {
                      setState(() {
                        isNameValid = true;
                        print("isNameValid in else is $isNameValid");
                      });
                    }
                  },
                ),
                RegisterValidation.isNameValid(nameController.toString()) ==
                        false
                    ? const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter your Name",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    : Container(),
                const TextWidget(text: "Email"),
                TextFieldWidget(
                  prefixIcon: Icons.email,
                  hint: "Kashish@gmail.com",
                  hintStyle: TextStyle(color: ColorConstants.whiteColor),
                  obscureText: false,
                  textEditingController: emailController,
                  enabledColor: isEmailValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  errorColor: isEmailValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  onChange: (val) {
                    if (!RegisterValidation.isEmailValid(val)) {
                      setState(() {
                        isEmailValid = false;
                      });
                    } else {
                      setState(() {
                        isEmailValid = true;
                      });
                    }
                  },
                ),
                RegisterValidation.isEmailValid(emailController.toString()) ==
                        false
                    ? const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter your email",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    : Container(),
                const TextWidget(text: "Phone Number"),
                TextFieldWidget(
                  prefixIcon: Icons.phone,
                  hintStyle: TextStyle(color: ColorConstants.whiteColor),
                  obscureText: false,
                  textEditingController: phoneController,
                  enabledColor: isPhoneValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  errorColor: isPhoneValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  onChange: (val) {
                    if (!RegisterValidation.isPhoneValid(val)) {
                      setState(() {
                        isPhoneValid = false;
                      });
                    } else {
                      setState(() {
                        isPhoneValid = true;
                      });
                    }
                  },
                ),
                RegisterValidation.isPhoneValid(phoneController.text) == false
                    ? const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter your phone number",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    : Container(),
                const TextWidget(text: "Password"),
                TextFieldWidget(
                  prefixIcon: Icons.lock,
                  hintStyle: TextStyle(color: ColorConstants.whiteColor),
                  obscureText: false,
                  textEditingController: passwordController,
                  enabledColor: isPasswordValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  errorColor: isPasswordValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  onChange: (val) {
                    if (!RegisterValidation.isPasswordValid(val)) {
                      setState(() {
                        isPasswordValid = false;
                      });
                    } else {
                      setState(() {
                        isPasswordValid = true;
                      });
                    }
                  },
                ),
                RegisterValidation.isPasswordValid(passwordController.text) ==
                        false
                    ? const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter correct password",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    : Container(),
                const TextWidget(text: "Confirm Password"),
                TextFieldWidget(
                  prefixIcon: Icons.lock_reset,
                  hintStyle: TextStyle(color: ColorConstants.whiteColor),
                  obscureText: false,
                  textEditingController: confirmController,
                  enabledColor: isConfirmValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  errorColor: isConfirmValid == true
                      ? ColorConstants.whiteColor
                      : ColorConstants.amberColor,
                  onChange: (val) {
                    if (!RegisterValidation.isConfirmValid(val)) {
                      setState(() {
                        isPhoneValid = false;
                      });
                    } else {
                      setState(() {
                        isPhoneValid = true;
                      });
                    }
                  },
                ),
                RegisterValidation.isConfirmValid(confirmController.text) ==
                        false
                    ? const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password doesn't match",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 6,
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    onPressed: () {
                      if (nameController.text.toString().isEmpty) {
                        setState(() {
                          isNameValid = false;
                        });
                      } else if (emailController.text.toString().isEmpty) {
                        setState(() {
                          isEmailValid = false;
                        });
                      } else if (phoneController.text.toString().isEmpty) {
                        setState(() {
                          isPhoneValid = false;
                        });
                      } else if (passwordController.text.toString().isEmpty) {
                        setState(() {
                          isPasswordValid = false;
                        });
                      } else if (confirmController.text.toString().isEmpty) {
                        setState(() {
                          isConfirmValid = false;
                        });
                      } else if (isEmailValid == true &&
                          isNameValid == true &&
                          isPhoneValid == true &&
                          isPasswordValid == true &&
                          isConfirmValid == true &&
                          passwordController.text == confirmController.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(
                                data: "Login",
                              ),
                            ));
                      }
                    },
                    child: const Text(
                      StringConstants.signUp,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 17, 98, 163),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
