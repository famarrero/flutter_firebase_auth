import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/auth/bloc/auth_bloc.dart';
import 'package:flutter_firebase_auth/pages/login/bloc/login_bloc.dart';

class EmailVerificationView extends StatefulWidget {
  const EmailVerificationView({Key? key}) : super(key: key);

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  late Timer timer;

  @override
  void initState() {
    sendEmailVerification();

    timer =
        Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());

    super.initState();
  }

  void sendEmailVerification() {
    context.read<AuthBloc>().add(const AuthEvent.onSendEmailVerification());
  }

  void checkEmailVerified() async {
    context
        .read<AuthBloc>()
        .add(const AuthEvent.onEmailVerified(emailVerified: true));

    // await FirebaseAuth.instance.currentUser?.reload();

    // bool isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    // if (isEmailVerified) {
    //   context.read<LoginBloc>().add(
    //         const LoginEvent.onLoginStatusChange(
    //           loginStatusEnum: LoginStatusEnum.loggedIn,
    //         ),
    //       );
    //   timer.cancel();
    // }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Check your Email',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'We have sent you a Email to: \n${FirebaseAuth.instance.currentUser?.email}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Verifying email....',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24.0),
              state.sendEmailVerification.isLoading
                  ? const CupertinoActivityIndicator(
                      radius: 16.0,
                      color: Colors.blue,
                    )
                  : ElevatedButton(
                      child: const Text('Resend'),
                      onPressed: () => sendEmailVerification(),
                    ),
            ],
          ),
        );
      },
    );
  }
}
