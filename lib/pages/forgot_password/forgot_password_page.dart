import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late TextEditingController emailController;

  @override
  void initState() {
    emailController = TextEditingController();

    emailController.text = 'felixmarrero93@gmail.com';
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ForgetPasswordBloc(),
        child: BlocConsumer<ForgetPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.sendEmail.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.sendEmail.failure!.message),
                ),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Enter you email to send a link for change you password",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
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
                  const SizedBox(height: 24.0),
                  state.sendEmail.isLoading
                      ? const CupertinoActivityIndicator(
                          radius: 16.0,
                          color: Colors.blue,
                        )
                      : ElevatedButton(
                          onPressed: () =>
                              context.read<ForgetPasswordBloc>().add(
                                    ForgotPasswordEvent.onSendEmailPressed(
                                      email: emailController.text.trim(),
                                    ),
                                  ),
                          child: const Text('Send email'),
                        ),
                  const SizedBox(height: 24.0),
                  RichText(
                    text: TextSpan(
                      text: 'Back to ',
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
        ),
      ),
    );
  }

  void onSingInTextPressed() {
    context.pop();
  }
}
