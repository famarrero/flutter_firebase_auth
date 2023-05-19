import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:flutter_firebase_auth/utils/firebase_error_messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc()
      : super(const ChangePasswordState(
          changePassword: BaseState.initial(),
        )) {
    on<_ChangePasswordEventOnChangePasswordPressed>(_onChangePasswordPressed);
  }

  /// Create FirebaseAuth instance
  final _firebaseAuth = FirebaseAuth.instance;

  void _onChangePasswordPressed(
    _ChangePasswordEventOnChangePasswordPressed event,
    Emitter<ChangePasswordState> emit,
  ) async {
    /// Emit loading to the [changePassword]
    emit(
      state.copyWith(
        changePassword: state.changePassword.copyWith(isLoading: true),
      ),
    );

    // await Future.delayed(const Duration(seconds: 3));

    /// Get the [currentUser]
    User? currentUser = _firebaseAuth.currentUser;

    try {
      /// Validate that the current user is not null
      if (currentUser == null) {
        emit(
          state.copyWith(
            changePassword:
                const BaseState.fail(UnexpectedFailure('Current user is null')),
          ),
        );
        return;
      }

      /// validate that the [email] of the [currentUser] is not null
      else if (currentUser.email == null) {
        emit(
          state.copyWith(
            changePassword:
                const BaseState.fail(UnexpectedFailure('Email is null')),
          ),
        );
        return;
      }

      /// Create user credential by [email] and [newPassword]
      final AuthCredential userCredential = EmailAuthProvider.credential(
        email: currentUser.email!,
        password: event.oldPassword,
      );

      /// Reauthenticate with  new credential
      await currentUser
          .reauthenticateWithCredential(userCredential)
          .then((value) {
        /// Update the password
        currentUser.updatePassword(event.newPassword);
      }).catchError((error) {
        /// Catch error
        emit(
          state.copyWith(
            changePassword: BaseState.fail(
              UnexpectedFailure(
                'Update password: ${error.toString()}',
              ),
            ),
          ),
        );
      });

      /// Emit success state
      emit(
        state.copyWith(
          changePassword: const BaseState.loaded(true),
        ),
      );
    } on FirebaseAuthException catch (e) {
      /// Catch firebase error
      emit(
        state.copyWith(
          changePassword: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e),
            ),
          ),
        ),
      );
    }
  }
}
