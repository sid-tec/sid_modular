// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Servidor {
  String key;
  bool ativo;
  bool masculino;
  bool professor;
  String nome;
  String curto;
  String siape;
  String cpf;
  String email;
  String sala;

  Servidor({
    required this.key,
    required this.ativo,
    required this.masculino,
    required this.professor,
    required this.nome,
    required this.curto,
    required this.siape,
    required this.cpf,
    required this.email,
    required this.sala,
  });

  Servidor copyWith({
    String? key,
    bool? ativo,
    bool? masculino,
    bool? professor,
    String? nome,
    String? curto,
    String? siape,
    String? cpf,
    String? email,
    String? sala,
  }) {
    return Servidor(
      key: key ?? this.key,
      ativo: ativo ?? this.ativo,
      masculino: masculino ?? this.masculino,
      professor: professor ?? this.professor,
      nome: nome ?? this.nome,
      curto: curto ?? this.curto,
      siape: siape ?? this.siape,
      cpf: cpf ?? this.cpf,
      email: email ?? this.email,
      sala: sala ?? this.sala,
    );
  }

  // =====================================

  String get pronome => masculino ? 'o ' : 'a ';

  String titulo({bool capital = true}) {
    var r = professor
        ? capital
            ? 'P'
            : 'p'
        : capital
            ? 'T'
            : 't';
    r += professor ? 'rofessor' : 'ecnic';
    r += masculino
        ? professor
            ? ''
            : 'o'
        : 'a';
    return r;
  }

  // =====================================

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'ativo': ativo,
      'masculino': masculino,
      'professor': professor,
      'nome': nome,
      'curto': curto,
      'siape': siape,
      'cpf': cpf,
      'email': email,
      'sala': sala,
    };
  }

  factory Servidor.fromMap(Map<String, dynamic> map) {
    return Servidor(
      key: map['key'] as String,
      ativo: map['ativo'] as bool,
      masculino: map['masculino'] as bool,
      professor: map['professor'] as bool,
      nome: map['nome'] as String,
      curto: map['curto'] as String,
      siape: map['siape'] as String,
      cpf: map['cpf'] as String,
      email: map['email'] as String,
      sala: map['sala'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Servidor.fromJson(String source) =>
      Servidor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Servidor(key: $key, ativo: $ativo, masculino: $masculino, professor: $professor, nome: $nome, curto: $curto, siape: $siape, cpf: $cpf, email: $email, sala: $sala)';
  }

  @override
  bool operator ==(covariant Servidor other) {
    if (identical(this, other)) return true;

    return other.key == key &&
        other.ativo == ativo &&
        other.masculino == masculino &&
        other.professor == professor &&
        other.nome == nome &&
        other.curto == curto &&
        other.siape == siape &&
        other.cpf == cpf &&
        other.email == email &&
        other.sala == sala;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        ativo.hashCode ^
        masculino.hashCode ^
        professor.hashCode ^
        nome.hashCode ^
        curto.hashCode ^
        siape.hashCode ^
        cpf.hashCode ^
        email.hashCode ^
        sala.hashCode;
  }
}
