import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page_flutter/bloc/login_bloc.dart';
import 'package:login_page_flutter/styled_component/styled_button.dart';
import 'package:login_page_flutter/styled_component/styled_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> showAlertDialog(BuildContext context, String title, String content) {
   return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(title: Text(title), content: Text(content));
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  child: StyledTextFormField(
                    'Username',
                    controller: _usernameController,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                child: StyledTextFormField("Password",
                    controller: _passwordController),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  child: StyledButton(
                      onPressed: () async => {
                            context.read<LoginBloc>().add(
                                LoginSubmitedEvent(
                                    username: _usernameController.text,
                                    password: _passwordController.text),
                               ),
                               await  showAlertDialog(
                                    context, state.status, state.status)
                          },
                      child: const Text("Login"))),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
