import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/auth/bloc/auth_bloc.dart';
import 'package:flutter_firebase_auth/pages/auth/components/auth_view.dart';
import 'package:flutter_firebase_auth/pages/auth/components/email_verification_view.dart';
import 'package:flutter_firebase_auth/pages/login/bloc/login_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        loginBloc: context.read<LoginBloc>(),
      ),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.signUp.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.signUp.failure!.message),
                ),
              );
            }
            if (state.sendEmailVerification.failure != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.sendEmailVerification.failure!.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.authStatus == AuthStatusEnum.authenticating) {
              return const AuthView();
            } else {
              return const EmailVerificationView();
            }
          },
        ),
      ),
    );
  }
}
