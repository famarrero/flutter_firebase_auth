import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

String getFirebaseErrorMessageByErrorCode(FirebaseAuthException e) {
  String? errorMessage = e.message;

  // if (e.code == 'weak-password') {
  //   errorMessage = 'The password provided is too weak.';
  // } else if (code == 'email-already-in-use') {
  //   errorMessage = 'The account already exists for that email.';
  // } else if (code == 'unknown') {
  //   errorMessage = 'Unknown error ocurred.';
  // } else {
  //   errorMessage = 'Error ocurred.';
  // }

  errorMessage ??= 'Error ocurred.';

  debugPrint(errorMessage);

  return errorMessage;
}
