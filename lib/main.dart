import 'package:flutter/material.dart';
import 'package:seab/screens/guia.dart';
import 'package:seab/screens/home1.dart';
import 'package:seab/screens/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  int _selectedIndex = 0;

  List<Widget> _pages = [
    HomeOne(),
    Guia(),
    Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: Colors.red,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white38,
              iconSize: 35,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: 'Primeiros Socorros'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz_outlined), label: 'Mais'),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,),
          ),
        ));
  }
}