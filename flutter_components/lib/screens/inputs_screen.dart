import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/text_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              icon: Icons.person,
              label: 'Nombre',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 10),
            CustomTextField(
                icon: Icons.email,
                label: 'Email',
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                ),
            const SizedBox(height: 10),
            CustomTextField(
              icon: Icons.lock,
              label: 'Contraseña',
              controller: TextEditingController(),
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
