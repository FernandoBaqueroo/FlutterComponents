import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
            title: const Text('Componentes de flutter'),
            elevation: 0,
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            centerTitle: true),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  leading: Icon(menuOptions[index].icon, color: Colors.indigo),
                  onTap: () {
                    //pushReplacement --> destruye la ruta anterior, te quita la flecha y la opción de volver
                    //pushNamed --> se pueden enviar argumentos
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
