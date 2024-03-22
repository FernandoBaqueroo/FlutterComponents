import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de ruta'),
          leading: const Icon(Icons.access_time_outlined),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
            //pushReplacement --> destruye la ruta anterior, te quita la flecha y la opción de volver
            //pushNamed --> se pueden enviar argumentos
            Navigator.push(context, route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 100
      )
    );
  }
}