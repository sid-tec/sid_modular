/* import 'package:flutter/material.dart';

import 'lib.dart';

class Servidores extends StatefulWidget {
  const Servidores({super.key});

  @override
  State<Servidores> createState() => _ServidoresState();
}

class _ServidoresState extends State<Servidores> {
  @override
  Widget build(BuildContext context) {
    return const ServidoresListagem();
  }
}

// ==========================================

class ServidoresListagem extends StatefulWidget {
  const ServidoresListagem({super.key});

  @override
  State<ServidoresListagem> createState() => _ServidoresListagemState();
}

class _ServidoresListagemState extends State<ServidoresListagem> {
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
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

// ==========================================

List<Item> items() {
  final servs = [];
  servs.addAll(DadosServidores.values);
  servs.sort((a, b) => a.curto.compareTo(b.curto));
  //
  var lista = <Item>[];
  for (DadosServidores servidor in servs) {
    var titulo = servidor.titulo.substring(0, 1) == 'p'
        ? servidor.titulo.replaceAll(RegExp(r'p'), 'P')
        : servidor.titulo.replaceAll(RegExp(r't'), 'T');
    var value = 'Nome: ${servidor.nome}\n';
    value += 'E-mail: ${servidor.email}\n';
    value += 'SIAPE: ${servidor.siape}\n';
    value += 'CPF: ${servidor.cpf == '' ? 'falta cadastrar' : servidor.cpf}\n';
    value += 'Sala: ${servidor.sala}\n';
    lista.add(Item(
      serv: servidor,
      headerValue: '$titulo ${servidor.curto}',
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

  DadosServidores serv;
  String expandedValue;
  String headerValue;
  bool isExpanded;
} */
