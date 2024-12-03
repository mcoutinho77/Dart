import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 9, 112, 196),
          title: const Text(
            "Tela de Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Form(
          child: Column(
            children: [
              const Icon(
                Icons.account_circle_rounded,
              color: Colors.white,
              size: 110,
              ),
              TextFormField(
                decoration:const InputDecoration(
                hintText: "E-mail",
                fillColor: Colors.white,
              )
            ),
          ],
        ),
      )
    );
  }
}
