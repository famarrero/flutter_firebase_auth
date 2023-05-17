import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    emailController.text = 'felixmarrero93@gmail.com';
    passwordController.text = '12345678';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.50,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.50,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.50,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              state.signUp.isLoading
                  ? const CupertinoActivityIndicator(
                      radius: 16.0,
                      color: Colors.blue,
                    )
                  : ElevatedButton(
                      onPressed: () => context.read<AuthBloc>()
                        ..add(AuthEvent.onSingUpPressed(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        )),
                      child: const Text('Sign Up'),
                    ),
              const SizedBox(height: 24.0),
              RichText(
                text: TextSpan(
                  text: 'Do you already have an account? ',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = onSingInTextPressed,
                      text: 'Sign In',
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void onSingInTextPressed() {
    context.pop();
  }
}
