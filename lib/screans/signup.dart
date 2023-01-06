import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/checkbox.dart';
import '../widgets/login_option.dart';
import '../widgets/primary_button.dart';
import '../widgets/signup_form.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: titleText,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already Have an account?',
                    style: subTitle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/loginPage');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LogInScreen()));
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Align(
              alignment: Alignment.center,
              // child: const Image(
              //   image: AssetImage('images/finish.png'),
              //   height: 250,
              //   width: 300,
              // ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox(
                'Agree to terms and conditions.',
                text: 'Agree to terms and conditions.',
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Padding(
            //   padding: kDefaultPadding,
            //   child: CheckBox(
            //     'I have at least 18 years old.',
            //     text: 'I have at least 18 years old.',
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/customerLogin');
              },
              child: const Padding(
                padding: kDefaultPadding,
                child: PrimaryButton(buttonText: 'Customer'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/loginPage');
              },
              child: const Padding(
                padding: kDefaultPadding,
                child: PrimaryButton(buttonText: 'Fuel Dealer'),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Or log in with:',
                style: subTitle.copyWith(color: kBlackColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: LoginOption(),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
