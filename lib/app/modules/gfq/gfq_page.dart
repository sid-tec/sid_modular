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
                  height: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Secretaria do GFQ')
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 74, 173)),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 0, 74, 173),
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2_outlined),
            icon: Icon(Icons.person_2),
            label: 'Perfil',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore_outlined),
            icon: Icon(Icons.explore),
            label: 'Contatos',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.reduce_capacity_outlined),
            icon: Icon(Icons.reduce_capacity),
            label: 'Reuniões',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month_outlined),
            icon: Icon(Icons.calendar_month),
            label: 'Q.Horários',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.task_alt_sharp),
            icon: Icon(Icons.task_sharp),
            label: 'Serviços',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text('Perfil'),
        ),
        Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: const Text('Contatos'),
        ),
        Container(
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: const Text('Reuniões'),
        ),
        Container(
          color: Colors.indigo,
          alignment: Alignment.center,
          child: const Text('Q.Horários'),
        ),
        Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: const Text('Serviços'),
        ),
      ][currentPageIndex],
    );

    /* return Row(
      children: <Widget>[
        NavigationRail(
          useIndicator: true,
          minWidth: 100,
          elevation: 10,
          labelType: NavigationRailLabelType.all,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          backgroundColor: const Color.fromARGB(255, 0, 74, 173),
          selectedIndex: currentPageIndex,
          //
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.person_2_outlined),
              icon: Icon(Icons.person_2),
              label: Text('Perfil'),
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.explore_outlined),
              icon: Icon(Icons.explore),
              label: Text('Contatos'),
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.reduce_capacity_outlined),
              icon: Icon(Icons.reduce_capacity),
              label: Text('Reuniões'),
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.calendar_month_outlined),
              icon: Icon(Icons.calendar_month),
              label: Text('Q.Horários'),
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.task_alt_sharp),
              icon: Icon(Icons.task_sharp),
              label: Text('Serviços'),
            ),
          ],
        ),
        const VerticalDivider(thickness: 10, width: 10),
        Container(
          color: Colors.red,
          //alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
      ],
    ); */

    /* 
    return Scaffold(
      appBar: AppBar(
          //title: const Text('Secretaria do GFQ'),
          title: Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/uff.PNG',
                  width: 70,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Secretaria do GFQ')
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 74, 173)),
      : NavigationRail(
        useIndicator: true,
        minWidth: 100,
        elevation: 10,
        labelType: NavigationRailLabelType.all,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 0, 74, 173),
        selectedIndex: currentPageIndex,
        //
        destinations: const <NavigationRailDestination>[
          NavigationRailDestination(
            selectedIcon: Icon(Icons.person_2_outlined),
            icon: Icon(Icons.person_2),
            label: Text('Perfil'),
          ),
          NavigationRailDestination(
            selectedIcon: Icon(Icons.explore_outlined),
            icon: Icon(Icons.explore),
            label: Text('Contatos'),
          ),
          NavigationRailDestination(
            selectedIcon: Icon(Icons.reduce_capacity_outlined),
            icon: Icon(Icons.reduce_capacity),
            label: Text('Reuniões'),
          ),
          NavigationRailDestination(
            selectedIcon: Icon(Icons.calendar_month_outlined),
            icon: Icon(Icons.calendar_month),
            label: Text('Q.Horários'),
          ),
          NavigationRailDestination(
            selectedIcon: Icon(Icons.task_alt_sharp),
            icon: Icon(Icons.task_sharp),
            label: Text('Serviços'),
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
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    ); */
  }
}

/* 
bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 0, 74, 173),
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

 */
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
