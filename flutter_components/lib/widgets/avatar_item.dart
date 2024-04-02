import 'package:flutter/material.dart';

class AvatarItem extends StatelessWidget {
  final String imageUrl;
  final String userName;

  const AvatarItem({super.key, required this.imageUrl, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          maxRadius: 110,
        ),
        const SizedBox(height: 8),
        Text(
          userName,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
