import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/auth/auth_page.dart';
import 'package:flutter_firebase_auth/pages/change_password/bloc/change_password_bloc.dart';
import 'package:flutter_firebase_auth/pages/forgot_password/forgot_password_page.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late TextEditingController oldPasswordController;
  late TextEditingController newPasswordController;

  @override
  void initState() {
    oldPasswordController = TextEditingController();
    newPasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChangePasswordBloc(),
        child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
          listener: (context, state) {
            if (state.changePassword.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.changePassword.failure!.message),
                ),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Change your password",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(height: 12.0),
                      TextField(
                        controller: oldPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Old password',
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
                        controller: newPasswordController,
                        decoration: InputDecoration(
                          labelText: 'New password',
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
                        controller: newPasswordController,
                        decoration: InputDecoration(
                          labelText: 'New password',
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
                      state.changePassword.isLoading
                          ? const CupertinoActivityIndicator(
                              radius: 16.0,
                              color: Colors.blue,
                            )
                          : ElevatedButton(
                              onPressed: () => context
                                  .read<ChangePasswordBloc>()
                                ..add(
                                    ChangePasswordEvent.onChangePasswordPressed(
                                  oldPassword:
                                      oldPasswordController.text.trim(),
                                  newPassword:
                                      newPasswordController.text.trim(),
                                )),
                              child: const Text('Sign in'),
                            ),
                      const SizedBox(height: 24.0),
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
                              text: 'Sign Up',
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
              ),
            );
          },
        ),
      ),
    );
  }

  void onSingUpTextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AuthPage(),
      ),
    );
  }

  void onForgotPasswordTextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ForgotPasswordPage(),
      ),
    );
  }
}
