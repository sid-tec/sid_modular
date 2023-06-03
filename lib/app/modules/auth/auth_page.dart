/* import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../model/library.dart';

class AuthPage extends StatelessWidget {
  const AuthPage(this.sid, {super.key});
  final Person sid;

  /* Person.fromMap(map: {
    'name': 'Sid',
    'birthDate': '09/05/1974',
    'uid': '',
  }); */ //(name: NameVO('Sid'), birthDate: DateVO('09/05/1974'), uid: '');
  @override
  Widget build(BuildContext context) {
    //final sid = Person(name: NameVO('Sid'), birthDate: DateVO('09/05/1974'));
    return Scaffold(
      appBar: AppBar(title: const Text('AAAAA Page')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                controller: TextEditingController(),
                rotulo: sid.name.getOrElse('errooooo'),
                dica: "Nome", //sid.name.getOrCrash, //"Fulano",
                validate: false,
                icon: Icons.person),
            Editor(
              controller: TextEditingController(),
              rotulo: "Telefone",
              dica: "99 999999999",
              validate: false,
              icon: Icons.phone,
              tipoInput: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => Modular.to.navigate('/'),
                    child: const Text('Navigate to Auth Page'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      // ======================================
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String rotulo;
  final String dica;
  final bool validate;
  final IconData? icon;
  final TextInputType? tipoInput;

  // ignore: use_key_in_widget_constructors
  const Editor(
      {required this.controller,
      required this.rotulo,
      required this.dica,
      required this.validate,
      this.icon,
      this.tipoInput});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0XFF97ace5), width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              icon: Icon(icon),
              labelText: rotulo,
              hintText: dica,
              errorText: validate ? 'Este campo não pode ser vazio' : null),
          style: const TextStyle(
            fontSize: 18,
          ),
          keyboardType: tipoInput ?? tipoInput),
    );
  }
}
 */