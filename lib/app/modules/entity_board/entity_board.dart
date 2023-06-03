import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'entity_board_item.dart';

class EntityBoard extends StatelessWidget {
  final List<EntityBoardItemParams> params;
  final String title;

  const EntityBoard({
    Key? key,
    required this.params,
    this.title = 'Entities Board',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5EBFD),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: boardChildren(),
      ),
    );
  }

  List<Widget> boardChildren() {
    //
    List<Widget> children = [
      /*  Padding(
        padding: const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('../../lib/images/dashboard.jpg'),
        ),
      ), */
    ];
    //
    for (var p in params) {
      children.add(
        EntityBoardItem(
          icon: p.icon,
          title: p.title,
          navigateTo: () => Modular.to.navigate(p.navigateTo),
        ),
      );
    }
    //
    return children;
  }
}
