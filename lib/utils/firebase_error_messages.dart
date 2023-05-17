String getFirebaseErrorMessageByErrorCode(String code) {
  String errorMessage = '';

  if (code == 'weak-password') {
    errorMessage = 'The password provided is too weak.';
  } else if (code == 'email-already-in-use') {
    errorMessage = 'The account already exists for that email.';
  } else if (code == 'unknown') {
    errorMessage = 'Unknown error ocurred.';
  } else {
    errorMessage = 'Error ocurred.';
  }

  return errorMessage;
}
