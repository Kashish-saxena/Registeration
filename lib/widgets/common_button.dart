import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final Function onPress;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidhetState();
}

class _ButtonWidhetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 6,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: widget.onPress(),
          // print("here");
          // if (emailController.text.toString().isEmpty) {
          //   setState(() {
          //     isEmailValid = false;
          //     print("isEmailValid is $isEmailValid");
          //   });
          // } else if (passwordController.text.toString().isEmpty) {
          //   setState(() {
          //     isPasswordValid = false;
          //     print("isPasswordValid is $isPasswordValid");
          //   });
          // } else if (isEmailValid == true && isPasswordValid == true) {
          //   Navigator.push(
          //       newContext,
          //       MaterialPageRoute(
          //         builder: (newContext) => const HomeScreen(),
          //       ));
        
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 17, 98, 163),
          ),
        ),
      ),
    );
  }
}
