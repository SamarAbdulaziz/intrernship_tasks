import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_projects/RegisterScreen.dart';
import 'package:internship_projects/sharedWidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to fashion Daily',
                ),
                const SizedBox(height: 10.0),
                mainRawWithHelp(screenTitle: 'Sign in'),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'eg',
                      showFlag: false,
                    ),
                    Expanded(
                      child: MyTextFormFeild(
                        hint: '1023456789',
                        keyboardtype: TextInputType.phone
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                myElevatedButton(text: 'Sign In'),
                Image.asset('assets/images/or.png'),
                signInByGoogleButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Doesn\'t has any account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text('Register here'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'use the application according to policy rules. '
                  'Any kinds of violations will be subject to sanctions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

