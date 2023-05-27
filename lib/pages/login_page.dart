import 'package:flutter/material.dart';
import 'package:splash_login_aula_1/controlles/login_controller.dart';

import '../components/custom_login.dart';
import '../widgets/custom__text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _controller = LoginController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        color: Colors.white54,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  Icons.people,
                  size: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              CustomTextField(
                label: 'Login',
                controller: _controller.emailcontroller,
              ),
              CustomTextField(
                label: 'Senha',
                controller: _controller.passwordcontroller,
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.auth(context);
                },
                child: const Text('Login'),
              ),
              CustomLoginComponents(
                loginController: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
