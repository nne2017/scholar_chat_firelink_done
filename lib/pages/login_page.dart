import 'package:flutter/material.dart';
import 'package:scholar_chat/component/custom_button.dart';
import 'package:scholar_chat/component/custom_textfield.dart';
import 'package:scholar_chat/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
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
                  'LOGIN',
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
            CustomButton(customText: 'Login'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: Text(
                      ' SignUp',
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
