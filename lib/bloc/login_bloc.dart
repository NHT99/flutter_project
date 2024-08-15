import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(password: "", username: "", status: "")) {
    on<LoginSubmitedEvent>(_onSubmited);
  }
  final usernames = ["admin", "user"];
  final pw = "123456";

  void _onSubmited(LoginSubmitedEvent event, Emitter<LoginState> emit) {
    final String username = event.username;
    final String password = event.password;
    if (usernames.contains(username) && password == pw) {
      emit(state.copyWith(status: "Success"));
    } else {
      emit(state.copyWith(status: "Fail"));
    }
  }
}
