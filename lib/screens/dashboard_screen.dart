import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 72, 12),
      appBar: AppBar(title: const Text('Flutter Topicos'),),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              ),
              accountName: Text('Rubensin Torres Frias :)'),
              accountEmail: Text('ruben.torres@itcelaya.edu.mx'),
            ),
            ListTile(
              title: const Text('Conversor'),
              subtitle: const Text('Temperatura'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.thermostat),
              onTap: (){
                Navigator.pushNamed(context, "/temp");
              },
            ),
            ListTile(
              title: const Text('Intenciones'),
              subtitle: const Text('Miscelanea'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.phone_android),
              onTap: (){
                Navigator.pushNamed(context, "/int");
              },
            ),
            
            ListTile(
              title: const Text('Movie APP'),
              subtitle: const Text('Lista de peliculas'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.movie),
              onTap: (){
                Navigator.pushNamed(context, "/movie");
              },
            ),
            ListTile(
              title: const Text('Login'),
              subtitle: const Text('Pantalla de Login'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.login),
              onTap: (){
                Navigator.pushNamed(context, "/login");
              },
            ),
            ListTile(
              title: const Text('Fruit APP'),
              subtitle: const Text('Fruit APP'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.apps),
              onTap: (){
                Navigator.pushNamed(context, "/fruit");
              },
            ),
            ListTile(
              title: const Text('OnBoarding'),
              subtitle: const Text('Board'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.phone_android),
              onTap: (){
                Navigator.pushNamed(context, "/onboard");
              },
            )
          ],
        ),
      ),
    );
  }
}