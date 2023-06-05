import 'package:flutter/material.dart';

class GfqPage extends StatefulWidget {
  const GfqPage({super.key});

  @override
  State<GfqPage> createState() => _GfqPageState();
}

class _GfqPageState extends State<GfqPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: const Text('Secretaria do GFQ'),
          title: Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/uff.PNG',
                  width: 70,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Secretaria do GFQ')
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 18, 68, 109)),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 18, 68, 109),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.reduce_capacity),
            label: 'Reuniões',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Contatos',
          ),
          NavigationDestination(
            //selectedIcon: Icon(Icons.person_2_outlined),
            icon: Icon(Icons.person_2_outlined),
            label: 'Perfil',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}

/* import 'package:flutter/material.dart';

class GfqPage extends DefaultFullPage {
  const GfqPage(
      {super.key,
      super.title,
      super.body = const Center(
        child: Text("XXXX"),
      )});
}

class DefaultFullPage extends StatefulWidget {
  final String title;
  final Widget body;

  const DefaultPage(
      {super.key,
      this.title = 'S!D TEC ORG',
      this.body = const Center(
        child: Text('____'),
      )});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          backgroundColor: const Color.fromARGB(255, 18, 68, 109)),
      //body: const TestForm(),
      body: body,
    );
  }

} */
