part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UsernameChangeEvent extends LoginEvent {
  const UsernameChangeEvent({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

class PasswordChangeEvent extends LoginEvent {
  const PasswordChangeEvent({required this.password});
  final String password;

  @override
  List<Object> get props => [password];
}

class LoginSubmitedEvent extends LoginEvent {
  const LoginSubmitedEvent({required this.username, required this.password});

  final String username;
  final String password;
}
