import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_projects/sharedWidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.cover,
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          initialSelection: 'eg',
                          showFlag: false,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: '1023456789',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  myElevatedButton(text: 'Sign In'),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      const Text(
                        '       Or      ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0),
                      ),
                      Expanded(
                        child: Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}

