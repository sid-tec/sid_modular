import 'package:flutter/material.dart';
import '../sid_app_bar.dart';
import 'contatos.dart';
import 'domain/servidor.dart';
import 'dart:developer' as logDev;

class GfqPage extends StatefulWidget {
  GfqPage({super.key, required this.user});

  final Servidor user;

  @override
  State<GfqPage> createState() {
    logDev.log(user.nome, name: 'usuario');
    return _GfqPageState();
  }
}

class _GfqPageState extends State<GfqPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidAppBar(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 0, 74, 173),
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_sharp),
            label: 'Contatos',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.reduce_capacity_outlined),
            icon: Icon(Icons.reduce_capacity),
            label: 'Reuniões',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month_outlined),
            icon: Icon(Icons.calendar_month),
            label: 'Q.Horários',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.task_alt_sharp),
            icon: Icon(Icons.task_sharp),
            label: 'Serviços',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Contatos(
              user: Servidor(
                  key: 'key',
                  ativo: true,
                  masculino: true,
                  professor: false,
                  nome: 'nome',
                  curto: 'curto',
                  siape: 'siape',
                  cpf: 'cpf',
                  email: 'email',
                  sala: 'sala')),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text('Reuniões'),
          //child: const ,
        ),
        Container(
          color: Colors.indigo,
          alignment: Alignment.center,
          child: const Text('Q.Horários'),
        ),
        Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: const Text('Serviços'),
        ),
      ][currentPageIndex],
    );
  }
}
