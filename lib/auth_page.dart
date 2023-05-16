import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late bool isSingUp;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    isSingUp = false;   

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
            if (isSingUp) ...[
              const CupertinoActivityIndicator(radius: 24.0),
            ],
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = onSingInTextPressed,
                    text: 'Log in',
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

  void onSingInTextPressed() {}

  Future<void> signIn() async {
    setState(() {
      isSingUp = true;
    });
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    setState(() {
      isSingUp = false;
    });
  }
}
