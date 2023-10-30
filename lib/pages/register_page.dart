import 'package:flutter/material.dart';
import 'package:scholar_chat/component/custom_button.dart';
import 'package:scholar_chat/component/custom_textfield.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  static String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 75,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(hintText: 'Email'),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(hintText: 'Password'),
            const SizedBox(
              height: 20,
            ),
            CustomButton(customText: 'Register'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
