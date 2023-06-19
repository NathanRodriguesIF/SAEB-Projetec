import 'package:flutter/material.dart';
import 'package:seab/contents/formtexttitle.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Fazer Cadastro',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
            width: 300,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormTextTitle(icon: Icons.person, name: 'Nome de usuário'),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[100], filled: true),
                ),
                FormTextTitle(icon: Icons.date_range, name: 'Data de nascimento'),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[100], filled: true),
                ),
                FormTextTitle(icon: Icons.password, name: 'Senha'),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[100], filled: true),
                ),
                FormTextTitle(icon: Icons.phone, name: 'Telefone'),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[100], filled: true),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: ElevatedButton(
                        onPressed: () {Navigator.pop(context);},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
