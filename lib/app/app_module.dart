import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/pages.dart';

class AppModule extends Module {
  final newBody = Center(
    child: ElevatedButton(
      onPressed: () => Modular.to.navigate('/board'),
      child: const Text('Navigate to board Page'),
    ),
  );
  //
  @override
  List<Bind> get binds => [];
  //
  @override
  List<ModularRoute> get routes => [
        //
        ChildRoute(
          '/',
          child: (context, args) => HomePage(
            body: newBody,
            title: 'Secretaria',
          ),
        ),
        //
/*         ChildRoute(
          '/auth',
          child: (context, args) => AuthPage(
            Person.fromMap(
              map: {
                'name': 'Sidx',
                'birthDate': '09/05/1974',
                'uid': '',
              },
            ),
          ),
        ), */
        //
/*         ChildRoute(
          '/form',
          child: (context, args) => const FormPage(),
        ), */
        //
/*         ChildRoute(
          '/list/persons',
          child: (context, args) => const EntityList(params: [
            EntityListParams(
                title: 't1',
                subtitle: 'st1',
                navigateTo: '',
                icon: FlutterLogo(size: 40.0)),
            EntityListParams(
                title: 't2',
                //subtitle: 'st2',
                navigateTo: '',
                icon: Icon(Icons.agriculture)),
            EntityListParams(title: 't3', subtitle: 'st3', navigateTo: ''),
            EntityListParams(title: 't4', subtitle: 'st4', navigateTo: ''),
          ]),
        ), */
        //
/*         ChildRoute(
          '/board',
          child: (context, args) => const EntityBoard(
            params: [
              EntityBoardItemParams(
                title: 'Persons',
                icon: Icons.people,
                navigateTo: '/list/persons',
              ),
              EntityBoardItemParams(
                title: 'Songs',
                icon: Icons.music_note,
                navigateTo: '/list/artists',
              ),
            ],
          ),
        ), */
      ];
}
