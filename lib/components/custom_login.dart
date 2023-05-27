import 'package:flutter/material.dart';
import 'package:splash_login_aula_1/controlles/login_controller.dart';

import '../pages/home_page.dart';

class CustomLoginComponents extends StatefulWidget {
  final LoginController loginController;
  const CustomLoginComponents({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  @override
  State<CustomLoginComponents> createState() => _CustomLoginComponentsState();
}

class _CustomLoginComponentsState extends State<CustomLoginComponents> {
  late final LoginController loginController;

  @override
  void initState() {
    super.initState();
    loginController = LoginController();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                // loginController.auth().then(
                (result) {
                  if (result) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('Login ou senha incorretos. Tente novamente!'),
                      ),
                    );
                  }
                };
              },
              child: const Text('login'),
            ),
    );
  }
}
