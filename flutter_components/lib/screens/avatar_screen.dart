import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/avatar_item.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Text('SL', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
        title: const Text('Avatars'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          AvatarItem(imageUrl: 'https://img.freepik.com/vector-premium/icono-redondo-cara-avatar-hombre-joven-estilo-plano_768258-2077.jpg', userName: "Cuco"),
        ],
      ),
    );
  }
}
