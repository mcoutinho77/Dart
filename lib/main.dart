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
            key: _formKey,
            child: Column(
              children: [
                const Icon(
                  (entrar) ? Icons.account_circle_rounded : Icons.account_circle_outlined,
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
                      return "O campo senha precisa ser preenchido";
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
                Visibility(
                  visible: !entrar,
                  child : Column(children: [
                      //////
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (String? value){
                          if(value == null){
                            return "O campo confirme a senha precisa ser preenchido";
                          }
                          if(value.length < 8){
                            return "O campo confirme a senha precisa ter o mínimo de 8 caracteres";
                          }
                          
                          return null;
                        },
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
                        validator: (String? value){
                          if(value == null){
                            return "O campo nome precisa ser preenchido";
                          }
                          if(value.length < 3){
                            return "O campo nome precisa ter o mínimo de 3 caracteres";
                          }
                          
                          return null;
                        },
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
                      onPressed: () {
                        botaoEntrar();
                      },
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
    ); // Scaffold
  }
  botaoEntrar() {
    if(_formKey.currenState!.validate()) {
      print("Formulário funcionando");
    }
    else{
      print("Formulário NÃO funcionando");
    }
  }
}
