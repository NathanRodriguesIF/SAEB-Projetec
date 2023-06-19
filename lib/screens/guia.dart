import 'package:flutter/material.dart';
import 'package:seab/contents/itemguia.dart';

class Guia extends StatelessWidget {
  const Guia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia Primeiros Socorros', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView(
          children: [
            ItemGuia(name: 'Orientações de uso', icon: Icons.question_mark,),
            ItemGuia(name: 'Primeiras orientações', icon: Icons.warning_amber,),
            ItemGuia(name: 'O que não fazer', icon: Icons.warning_amber,),
            ItemGuia(name: 'Choques Elétricos', icon: Icons.electric_bolt,),
            ItemGuia(name: 'Fraturas ou Luxações', icon: Icons.person,),
            ItemGuia(name: 'Incêndios', icon: Icons.local_fire_department,),
            ItemGuia(name: 'Parada Cardiorespiratória', icon: Icons.heart_broken,),
          ],
        ),
      ),
    );
  }
}
