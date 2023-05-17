import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message];
}

class FirebaseFailure extends Failure {
  const FirebaseFailure(String? message)
      : super(message ?? 'A firebase failure ocurred');

  @override
  List<Object?> get props => [message];
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure(String? message)
      : super(message ?? 'A unexpected fail have been ocurred');

  @override
  List<Object?> get props => [message];
}
