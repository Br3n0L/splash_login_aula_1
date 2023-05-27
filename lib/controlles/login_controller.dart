import 'package:flutter/material.dart';
import 'package:splash_login_aula_1/pages/home_page.dart';

class LoginController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  Future<bool> auth(context) async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    if (emailcontroller.text == "admin" && passwordcontroller.text == "123") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
      alert(context, 'Login autorizado');
      return true; // Autenticação bem-sucedida
    } else {
      alert(context, 'Login ou senha incorretos. Tente novamente!');
      return false; // Autenticação falhou
    }
  }

  // auth(BuildContext context) async {
  //   inLoader.value = true;
  //   await Future.delayed(const Duration(seconds: 2));
  //   inLoader.value = false;
  //   // if (emailcontroller.text.isEmpty) {
  //   //   alert(context, 'O e-mail está vazio');
  //   //   return;
  //   // }
  //   // if (passwordcontroller.text.isEmpty) {
  //   //   alert(context, 'Digite uma senha!');
  //   //   return;
  //   // }
  // if (emailcontroller.text == "admin" && passwordcontroller.text == "123") {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const HomePage()),
  //   );
  //     // } else {
  //     //   alert(context, 'O login falhou!');
  //     // }
}

alert(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
//   }
//
