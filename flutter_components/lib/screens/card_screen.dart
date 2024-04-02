import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/custom_card.dart';
import 'package:flutter_components/widgets/image_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas Detalladas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomCard(
            icon: Icons.home,
            iconColor: Colors.blue,
            title: 'Inicio',
            description: 'Página principal de la aplicación',
            onTap: () {
              // Acción al hacer clic en la tarjeta de inicio
            },
          ),
          CustomCard(
            icon: Icons.settings,
            iconColor: Colors.green,
            title: 'Configuración',
            description: 'Personaliza la configuración de la aplicación',
            onTap: () {
              // Acción al hacer clic en la tarjeta de configuración
            },
          ),
          CustomCard(
            icon: Icons.info,
            iconColor: Colors.orange,
            title: 'Acerca de',
            description: 'Obtén más información sobre la aplicación',
            onTap: () {
              // Acción al hacer clic en la tarjeta de acerca de
            },
          ),
          const ImageCard(
            image: "https://static.vecteezy.com/system/resources/previews/003/623/626/non_2x/sunset-lake-landscape-illustration-free-vector.jpg",
            description: "LandScape",
          )
        ],
      ),
    );
  }
}
