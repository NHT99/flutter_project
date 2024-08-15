import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(password: "", username: "", status: "")) {
    on<LoginSubmitedEvent>(_onSubmitted);
    on<ResetResultValueEvent>(_onResetResultValue);
  }

  final _usernames = ["admin", "user"];
  final _pw = "123456";

  void _onSubmitted(LoginSubmitedEvent event, Emitter<LoginState> emit) {
    final String username = event.username;
    final String password = event.password;
    if (_usernames.contains(username) && password == _pw) {
      emit(state.copyWith(status: "Success"));
    } else {
      emit(state.copyWith(status: "Fail"));
    }
  }

  void _onResetResultValue(
      ResetResultValueEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(status: ""));
  }
}
