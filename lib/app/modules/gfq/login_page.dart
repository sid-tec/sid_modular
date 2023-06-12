import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sid_modular/app/modules/gfq/lib.dart';

import '../sid_app_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int currentPageIndex = 0;
  final userValue = ValueNotifier('');
  final userKey = ValueNotifier('');
  late final Servidor user;

  final dropChoices = Repositories.getServidoresMapKeyNome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidAppBar(home: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Spacer(),
                Image.asset(
                  'assets/brasao.png',
                  height: 250,
                ),
                const Text(
                  'Entrar no Sistema',
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(),
                /*             const TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuário',
                  ),
                ), */
                const Spacer(),
                ValueListenableBuilder(
                  valueListenable: userValue,
                  builder: (context, value, _) =>
                      DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Usuário:'),
                    ),
                    isExpanded: true,
                    icon: const Icon(Icons.person),
                    hint: const Text('Selecione um Usuário...'),
                    value: value.isEmpty ? null : value,
/*                     onChanged: (escolha) =>
                        userValue.value = escolha.toString(), */
                    /* onChanged: (escolha) => userValue.value = dropChoices
                        .entries
                        .firstWhere((element) => element.value == escolha.toString())
                        .key
                        .toString(), */
                    onChanged: (value) {
                      userValue.value = value.toString();
                      userKey.value = dropChoices.entries
                          .firstWhere(
                              (element) => element.value == value.toString())
                          .key;
                      user = Repositories.getServidores(
                          keys: [userKey.value.toString()]).first;
                    },
                    items: dropChoices.values
                        .map((op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                            ))
                        .toList(),
                  ),
                ),
                const Spacer(),
                const TextField(
                  obscureText: true,
                  //controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Esqueceu da Senha',
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () => Modular.to.navigate(
                    '/secretaria',
                    arguments: user,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/* class UsuarioField extends StatelessWidget {
  const UsuarioField({super.key});

  static final Iterable<String> _kOptions = Repositories.getServidoresNomes();

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("$selection selecionado!")));
        debugPrint('You just selected $selection');
      },
    );
  }
} */

/* class UsuarioField extends StatelessWidget {
  const UsuarioField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
} */
