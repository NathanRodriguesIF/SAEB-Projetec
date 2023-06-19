import 'package:flutter/material.dart';
import 'package:seab/screens/cadastro.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                children: [
                  Icon(Icons.person),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Nome de usuário',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration:
                    InputDecoration(fillColor: Colors.grey[100], filled: true),
              ),
              const Row(
                children: [
                  Icon(Icons.password),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Senha',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration:
                    InputDecoration(fillColor: Colors.grey[100], filled: true),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: const Text(
                            'Fazer Cadastro',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
