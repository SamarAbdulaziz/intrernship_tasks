import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_projects/Login_Register/sharedWidgets.dart';

import 'LoginScreen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight:300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
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
                              // MyTextFormFeild(
                              //     hint: '1023456789',
                              //     keyboardtype: TextInputType.phone
                              // )
                            ),
                          ],
                        ),
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
                      keyboardtype: TextInputType.visiblePassword),
                  const SizedBox(
                    height: 10.0,
                  ),
                  myElevatedButton(text: 'Register'),
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
                        style: TextStyle(color: Colors.grey, fontSize: 18.0),
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
                      TextButton(onPressed: (){
                      },
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
              ]),
            )
          ],
        ));
  }
}
