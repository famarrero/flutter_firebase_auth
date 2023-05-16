import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late bool isSingIn;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    isSingIn = false;

    emailController.text = 'felix-test@gmail.com';
    passwordController.text = '12345678';

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase Auth'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 4.0),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 24.0),
            OutlinedButton(
              onPressed: signIn,
              child: const Text('Sing in'),
            ),
            const SizedBox(height: 24.0),
            if (isSingIn) ...[
              const CupertinoActivityIndicator(radius: 24.0),
            ],
            RichText(
              text: TextSpan(
                text: 'No account? ',
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = onSingUpTextPressed,
                    text: 'Sing Up',
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSingUpTextPressed() {}

  Future<void> signIn() async {
    setState(() {
      isSingIn = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    setState(() {
      isSingIn = false;
    });
  }
}
