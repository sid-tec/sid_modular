import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SidAppBar extends AppBar {
  final bool home;
  SidAppBar({super.key, this.home = false});

  @override
  State<SidAppBar> createState() =>
      home ? _HomeSidAppBarState() : _SidAppBarState();
}

class _HomeSidAppBarState extends State<SidAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Secretaria do GFQ'),
      backgroundColor: const Color.fromARGB(255, 0, 74, 173),
      leading: Image.asset(
        'assets/uff.PNG',
        //height: 25,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _SidAppBarState extends State<SidAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Secretaria do GFQ'),
      backgroundColor: const Color.fromARGB(255, 0, 74, 173),
      leading: Image.asset(
        'assets/uff.PNG',
        //height: 25,
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Inicio',
          onPressed: () => Modular.to.navigate('/'),
/*               onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              }, */
        ),
      ],
    );
  }
}
