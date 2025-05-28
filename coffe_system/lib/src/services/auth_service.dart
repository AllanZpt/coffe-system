import 'package:coffe_system/src/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signin({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );

  await Future.delayed(const Duration(seconds: 1));
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
  );
}
