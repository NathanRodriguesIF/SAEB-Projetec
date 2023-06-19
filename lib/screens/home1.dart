import 'package:flutter/material.dart';
import '../contents/alerta.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          leading: Container(),
          title: const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'SEAB',
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 28.0),
                child: SizedBox(
                    width: 230,
                    height: 230,
                    child: Alerta())),
            Text(
              'Aperte para ligar para os bombeiros',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
