part of 'login_bloc.dart';

enum LoginStatus { success, fail }

class LoginState extends Equatable{
  const LoginState(
      {required this.username, required this.password, required this.status});

  final String username;
  final String password;
  final String status;

  LoginState copyWith({String? username, String? password, String? status}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        status: status ?? this.status);
  }

  @override
  List<Object> get props => [username, password, status];
}
