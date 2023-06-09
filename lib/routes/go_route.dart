import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/pages/auth/auth_page.dart';
import 'package:flutter_firebase_auth/pages/change_password/change_password_page.dart';
import 'package:flutter_firebase_auth/pages/forgot_password/forgot_password_page.dart';
import 'package:flutter_firebase_auth/pages/home/home_page.dart';
import 'package:flutter_firebase_auth/pages/login/bloc/login_bloc.dart';
import 'package:flutter_firebase_auth/pages/login/login_page.dart';
import 'package:flutter_firebase_auth/routes/go_router_refresh_stream.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static String loginPath = '/login';
  static String loginName = 'LoginPage';

  static String forgotPasswordPath = '/forgot-password';
  static String forgotPasswordName = 'ForgotPasswordPage';

  static String authenticationPath = '/authentication';
  static String authenticationName = 'AuthenticationPage';

  static String homePath = '/home';
  static String homeName = 'HomePage';

  static String changePasswordPath = '/change-password';
  static String changePasswordName = 'ChangePasswordPage';
}

GoRouter getAppRoute(LoginBloc loginCubit) => GoRouter(
      refreshListenable: GoRouterRefreshStream(loginCubit.stream),
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          redirect: (BuildContext context, GoRouterState state) => '/home',
        ),
        GoRoute(
            path: Routes.loginPath,
            name: Routes.loginName,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginPage();
            }),
        GoRoute(
            path: Routes.authenticationPath,
            name: Routes.authenticationName,
            builder: (BuildContext context, GoRouterState state) {
              return const AuthPage();
            }),
        GoRoute(
            path: Routes.forgotPasswordPath,
            name: Routes.forgotPasswordName,
            builder: (BuildContext context, GoRouterState state) {
              return const ForgotPasswordPage();
            }),
        GoRoute(
            path: Routes.homePath,
            name: Routes.homeName,
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            }),
        GoRoute(
            path: Routes.changePasswordPath,
            name: Routes.changePasswordName,
            builder: (BuildContext context, GoRouterState state) {
              return const ChangePasswordPage();
            }),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        // if the user is not logged in, they need to login

        // get the LoginStatus
        final loginStatus = loginCubit.state.loginStatus;

        // verify is app is in login route
        final locationIsLoginPage = state.subloc == Routes.loginPath;
        // if LoginStatus is different to logged return the login route if app ist not in there
        if (loginStatus == LoginStatusEnum.unLoggedIn) {
          return locationIsLoginPage ? null : Routes.loginPath;
        }
        // if the user is logged in but still on the login page, send them to
        // the home page
        if (locationIsLoginPage) return '/';

        // no need to redirect at all
        return null;
      },
    );
