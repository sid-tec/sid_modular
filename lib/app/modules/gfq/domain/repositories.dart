import 'package:secretaria/secretaria.dart';

import 'servidor.dart';

abstract class Repositories {
  static const servs = DadosServidores.values;

  static Iterable<Servidor> getServidores(
      {Iterable<String> keys = const [], bool sort = true}) {
    final list = <Servidor>[];
    for (var s in servs) {
      if (keys.isEmpty || keys.contains(s.key)) {
        list.add(Servidor(
          ativo: !s.aposentado,
          masculino: s.masculino,
          professor: s.professor,
          sala: s.sala,
          key: s.key,
          curto: s.curto,
          nome: s.nome,
          email: s.email,
          siape: s.siape,
          cpf: s.cpf,
        ));
      }
    }

    if (sort) {
      list.sort((a, b) => a.curto.compareTo(b.curto));
    }
    return list;
  }

  static Map<String, String> getServidoresMapKeyNome(
      {Iterable<String> keys = const []}) {
    final map = <String, String>{};
    for (var s in servs) {
      if (keys.isEmpty || keys.contains(s.key)) {
        map.putIfAbsent(s.key, () => s.nome);
      }
    }
    return map;
  }

  static Iterable<String> getServidoresNomes(
      {Iterable<String> keys = const [], bool sort = true}) {
    final list = <String>[];
    for (var s in servs) {
      if (keys.isEmpty || keys.contains(s.key)) {
        list.add(s.nome);
      }
    }

    if (sort) {
      list.sort((a, b) => a.compareTo(b));
    }
    return list;
  }
}
