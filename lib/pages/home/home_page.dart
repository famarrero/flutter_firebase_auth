import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/login/bloc/login_bloc.dart';
import 'package:flutter_firebase_auth/routes/go_route.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        centerTitle: true,
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (user != null) ...[
                  const Text(
                    'You are sing in as:',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        user.email ?? 'no data',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () => context.push(Routes.changePasswordPath),
                    child: const Text('Change password'),
                  ),
                  const SizedBox(height: 24.0),
                  state.signOut.isLoading
                      ? const CupertinoActivityIndicator(
                          radius: 16.0,
                          color: Colors.blue,
                        )
                      : ElevatedButton(
                          onPressed: () => context.read<LoginBloc>()
                            ..add(
                              const LoginEvent.onSignOutPressed(),
                            ),
                          child: const Text('Sing out'),
                        ),
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
