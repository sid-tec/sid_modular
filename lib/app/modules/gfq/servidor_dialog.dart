// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopiarDialog extends StatelessWidget {
  final String cpf;
  final String nome;
  final String email;
  final String siape;

  const CopiarDialog({
    super.key,
    this.cpf = '',
    required this.nome,
    required this.email,
    required this.siape,
  });
  @override
  Widget build(BuildContext context) {
    return contatoSimpleDialog(
      nome,
      email,
      siape,
      cpf,
    );
  }
}

contatoSimpleDialog(
  String nome,
  String email,
  String siape,
  String cpf,
) =>
    SimpleDialog(
      title: const Text('Clique para copiar!'),
      children: [
        _DialogDemoItem(
          label: 'Nome',
          text: nome,
        ),
        _DialogDemoItem(
          label: 'E-mail',
          text: email,
        ),
        _DialogDemoItem(
          label: 'SIAPE',
          text: siape,
        ),
        _DialogDemoItem(
          label: 'CPF',
          text: cpf,
        ),
        const CloseButton(),
      ],
    );

class _DialogDemoItem extends StatelessWidget {
  const _DialogDemoItem({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);

  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: () {
        Clipboard.setData(ClipboardData(text: text)).then((_) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("$text copiado para a área de Transferência!")));
        });
      },
      child: text.isEmpty
          ? Container()
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.copy, size: 36, color: Colors.blue),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16),
                  child: Text('$label: $text'),
                ),
              ],
            ),
    );
  }
}
