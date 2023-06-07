import 'package:flutter/material.dart';
import 'package:secretaria/secretaria.dart';

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ExpansionPanelListContatos(),
      /* child: Column(children: [
        Text('Servidores:', style: TextStyle(fontSize: 20)),
        ExpansionPanelListContatos(),
      ]), */
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems() {
  final servs = [];
  servs.addAll(DadosServidores.values);
  servs.sort((a, b) => a.curto.compareTo(b.curto));
  var lista = <Item>[];

  for (var servidor in servs) {
    var titulo = servidor.titulo.substring(0, 1) == 'p'
        ? servidor.titulo.replaceAll(RegExp(r'p'), 'P')
        : servidor.titulo.replaceAll(RegExp(r't'), 'T');

    lista.add(Item(
        expandedValue:
            'Nome: ${servidor.nome}\nE-mail: ${servidor.email}\nSIAPE: ${servidor.siape}\nCPF: ${servidor.cpf == '' ? 'falta cadastrar' : servidor.cpf}\nSala: ${servidor.sala}\n',
        headerValue: '$titulo ${servidor.curto}'));
  }
  return lista;
}

class ExpansionPanelListContatos extends StatefulWidget {
  const ExpansionPanelListContatos({super.key});

  @override
  State<ExpansionPanelListContatos> createState() =>
      _ExpansionPanelListContatosState();
}

class _ExpansionPanelListContatosState
    extends State<ExpansionPanelListContatos> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Servidores:', style: TextStyle(fontSize: 20)),
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
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
/*               subtitle: const Text('Favorito'),
              trailing: const Icon(Icons.favorite), */
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
