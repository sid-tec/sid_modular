import 'package:flutter/material.dart';

class EntityBoardItemParams {
  final String title;
  final IconData icon;
  final String navigateTo;

  const EntityBoardItemParams({
    required this.title,
    required this.icon,
    required this.navigateTo,
  });
}

class EntityBoardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function navigateTo;

  const EntityBoardItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.navigateTo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        //Podendo utilizar o InkWell
        onTap: () => {navigateTo()},
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 24.0,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
