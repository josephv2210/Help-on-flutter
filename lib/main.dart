import 'package:flutter/material.dart';
import 'package:helpon/pages/PageCreate.dart';
import 'package:helpon/pages/PageHome.dart';
import 'package:helpon/pages/PageNotifications.dart';
import 'package:helpon/pages/PageProfile.dart';
import 'package:helpon/pages/PageSearch.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  List<Widget> _pages = [
    PageHome(),
    PageSearch(),
    PageCreate(),
    PageNotifications(),
    PageProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _pages[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle:
              const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          fixedColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Color.fromRGBO(133, 123, 124, 1),
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: "Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Buscar"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Crear"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Notificaciones"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Perfil"),
          ],
        ),
      ),
    );
  }
}




 