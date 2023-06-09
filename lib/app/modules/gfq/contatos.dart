import 'package:flutter/material.dart';

import 'lib.dart';

class Contatos extends StatefulWidget {
  Contatos({super.key, required this.user});

  final Servidor user;

  @override
  State<Contatos> createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionPanelListContatos();
  }
}

// ==========================================

class ExpansionPanelListContatos extends StatefulWidget {
  const ExpansionPanelListContatos({super.key});

  @override
  State<ExpansionPanelListContatos> createState() =>
      _ExpansionPanelListContatosState();
}

// ==========================================

class _ExpansionPanelListContatosState
    extends State<ExpansionPanelListContatos> {
  final List<Item> _data = items();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Servidores:', style: TextStyle(fontSize: 20)),
          _buildPanel(),
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              //title: Text(item.headerValue),
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => CopiarDialog(
                cpf: item.serv.cpf,
                nome: item.serv.nome,
                email: item.serv.email,
                siape: item.serv.siape,
              ),
            ),
            /* ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar'))); */
            /* setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                }); */
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

// ==========================================

List<Item> items() {
  final servs = Repositories.getServidores();
  //
  var lista = <Item>[];
  for (Servidor servidor in servs) {
    ;
    var value = 'Nome: ${servidor.nome}\n';
    value += 'E-mail: ${servidor.email}\n';
    value += 'SIAPE: ${servidor.siape}\n';
    value += 'CPF: ${servidor.cpf == '' ? 'falta cadastrar' : servidor.cpf}\n';
    value += 'Sala: ${servidor.sala}\n';
    lista.add(Item(
      serv: servidor,
      headerValue: '${servidor.titulo()} ${servidor.curto}',
      expandedValue: value,
    ));
  }
  return lista;
}

// ==========================================

class Item {
  Item({
    required this.serv,
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  Servidor serv;
  String expandedValue;
  String headerValue;
  bool isExpanded;
}

// ==============================


