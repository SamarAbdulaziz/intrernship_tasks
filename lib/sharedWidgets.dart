import 'package:flutter/material.dart';

Widget MyTextFormFeild({
  required String hint,
  IconData? icon,
  required TextInputType keyboardtype,
}) =>
    TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      keyboardType:keyboardtype,
    );

Widget signInByGoogleButton() => Container(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/googleIcon.png',
              height: 18.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text(
              'Sign with by google',
            ),
          ],
        ),
      ),
    );

Widget mainRawWithHelp({
  required String screenTitle,
}) =>
    Row(
      children: [
        Text(
          screenTitle,
          style: TextStyle(
            fontSize: 35.0,
            fontFamily: 'Lora',
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Help',
          ),
        ),
        const CircleAvatar(
          child: Icon(
            Icons.question_mark_rounded,
            size: 15.0,
          ),
          radius: 10.0,
        ),
      ],
    );

Widget myElevatedButton({
  required String text,
}) =>
    Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
        ),
      ),
    );
