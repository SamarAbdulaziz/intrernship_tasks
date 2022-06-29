import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_projects/LoginScreen.dart';
import 'package:internship_projects/sharedWidgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100.0,
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
                  mainRawWithHelp(screenTitle: 'Register'),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  MyTextFormFeild(
                      hint: 'Eg.example@email.com',
                      keyboardtype: TextInputType.emailAddress,
                  ),
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  MyTextFormFeild(
                    hint: 'password',
                    icon: Icons.visibility,
                      keyboardtype: TextInputType.visiblePassword
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  myElevatedButton(text: 'Register'),
                  Image.asset('assets/images/or.png'),
                  signInByGoogleButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Has any account?',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text('Sing in here'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'By registering your account, you are agree to our',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'terms and condition',
                          style: TextStyle(
                            fontSize: 12.0
                          ),
                        ),
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
