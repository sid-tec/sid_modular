import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/brasao.png',
              width: 100,
              height: 250,
              //fit: BoxFit.cover,
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Entrar no Sistema',
                  style: TextStyle(fontSize: 20),
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                //controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuário',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Esqueceu da Senha',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () => Modular.to.navigate('/secretaria'),
                )),
          ],
        ),
      ),
    );

/* 

Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              /* child: TextFormField(
                //controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ), */
              child: const Text('USER'),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              /* child: TextFormField(
                obscureText: true,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ), */
              child: const Text('Passw'),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    //print(nameController.text);
                    //print(passwordController.text);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ));
 */ /* return Row(
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

class LoginPage extends DefaultFullPage {
  const LoginPage(
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
