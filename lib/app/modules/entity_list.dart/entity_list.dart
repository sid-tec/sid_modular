import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EntityListParams {
  final String title;
  final Widget? icon;
  final String subtitle;
  final String navigateTo;

  const EntityListParams({
    required this.title,
    this.subtitle = '',
    this.icon,
    required this.navigateTo,
  });
}

class EntityList extends StatefulWidget {
  final List<EntityListParams> params;

  const EntityList({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EntityListState();
  }
}

class EntityListState extends State<EntityList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5EBFD),
      appBar: AppBar(
        title: const Text('Persons'),
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (var p in widget.params)
              Card(
                child: ListTile(
                  title: Text(p.title),
                  subtitle: Text(p.subtitle),
                  leading: p.icon,
                  onTap: () => () => Modular.to.navigate(p.navigateTo),
                ),
              ),
          ],
        ),
      ),
    );
  }
}




/*

    Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text('Two-line ListTile'),
        subtitle: Text('Here is a second line'),
        trailing: Icon(Icons.more_vert),
      ),

Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FutureBuilder(
          future: widget.dao.findAll(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                final params = widget.dao.findAll() as List<Entity>;
                return ListView.builder(
                  itemCount: entities.length,
                  itemBuilder: (context, index) {
                    final Entity entity = entities[index];
                    return Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: GestureDetector(
                          onTap: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MapToForm(
                                          dao: widget.dao,
                                          updateMap: {},
                                          params: {},
                                        )))
                              },
                          child: EntityCard(
                            entity: entity,
                            title: '',
                            subtitle: '',
                          )),
                    );
                  },
                );
            }

            return const Center(child: Text('Unknown Error'));
          },
        ),
      ),
 */