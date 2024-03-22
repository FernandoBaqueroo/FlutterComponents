import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Valorant', 'GTA V', 'Driver 3', 'Read Dead Redemption 2'];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          //CON ESTA LÍNEA LO QUE HACEMOS ES RECORRER UNA LISTA DE STRING Y
          //CREAR TANTAS LINEAS DE LISTA COMO JUEGOS HAY EN LA LISTA.
          ...options.map((game) => ListTile(
            title: Text(game),
            //Icono de flecha de acceso
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList(),
        ],
      )
    );
  }
}