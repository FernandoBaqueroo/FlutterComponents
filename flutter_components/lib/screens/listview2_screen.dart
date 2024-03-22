import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Valorant', 'GTA V', 'Driver 3', 'Read Dead Redemption 2'];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation: 0, //SOMBRA
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        //CONTENIDO DE LA LISTA
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        //SEPARADORES
        separatorBuilder: (_, __) => const Divider(),
        //SIGUE EL NÚMERO DE ELEMENTOS DE LA LISTA
        itemCount: options.length
      )
    );
  }
}