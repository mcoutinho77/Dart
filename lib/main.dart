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

  final _formKey = GlobalKey<FormState>();
  
  
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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 110,
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (String? value){
                    if(value == null){
                      return "O campo E-mail precisa ser preenchido";
                    }
                    if(value.length < 5){
                      return "O campo E-mail precisa ter o mínimo de 5 caracteres";
                    }
                    if(!value.contains("@"){
                      return "O campo E-mail precisa ter o arroba ( @ )";
                    }
                    if(!value.contains("."){
                      return "O campo E-mail precisa ter o ponto ( . )";
                    }
                    
                    return null;
                  },
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
                  TextFormField(
                  validator: (String? value){
                    if(value == null){
                      return "O campo E-senha precisa ser preenchido";
                    }
                    if(value.length < 8){
                      return "O campo senha precisa ter o mínimo de 8 caracteres";
                    }
                    
                    return null;
                  },
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
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 9, 112, 196),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cadastre-se",
                    style: TextStyle(
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
