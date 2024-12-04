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
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool entrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (entrar) ? Colors.black : Colors.brown[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: (entrar) ? Colors.red : Colors.deepOrangeAccent,
        title: const Text(
          (entrar) ? "Tela de Login" : "Tela de Cadastro",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Form(
            child: Column(
              children: [
                const Icon(
                  (entrar) ? Icons.account_circle_rounded : Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 110,
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Senha",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                  ),
                  obscureText: true,
                ),
                Visibility(
                  visible: !entrar,
                  child : Column(children: [
                      //////
                      const SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Confirme a senha",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                        obscureText: true,
                      ),

                      /////
                      const SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Nome",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                      ),
                      
                      /////
                    ],
                  ), //Column
                ), //Visibility
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: (entrar) ? const Colors.red : Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      child: const Text(
                        (entrar) ? "Entrar" : "Cadastrar",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      entrar = !entrar;
                    });
                  },
                  child: const Text(
                    (entrar)? "Cadastre-se" : "Entre",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
