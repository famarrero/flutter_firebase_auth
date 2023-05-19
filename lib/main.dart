// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/pages/login/bloc/login_bloc.dart';
import 'package:flutter_firebase_auth/routes/go_route.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
      apiKey: "AIzaSyDHdsw-akC3f3XQOhPxD27CdOIuWc5k6Hg",
      appId: "1:163009384660:web:e96d1bef3e96a10c32ab41",
      messagingSenderId: "163009384660",
      projectId: "flutter-test-1d90c",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final LoginBloc _loginBloc;
  late final GoRouter _appRouter;

  @override
  void initState() {
    _loginBloc = LoginBloc();
    _appRouter = getAppRoute(_loginBloc);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: MaterialApp.router(
        routeInformationParser: _appRouter.routeInformationParser,
        routerDelegate: _appRouter.routerDelegate,
        routeInformationProvider: _appRouter.routeInformationProvider,
        title: 'Flutter Firebase Auth',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (snapshot.hasError) {
//           return const Center(
//             child: Text('Error ocurred'),
//           );
//         }
//         if (snapshot.hasData) {
//           return const HomePage();
//         } else {
//           return const LoginPage();
//         }
//       },
//     );
//   }
// }
