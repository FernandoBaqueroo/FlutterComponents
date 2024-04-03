import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/text_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState>myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'email': 'fernandobz634@gmail.com',
      'password': '123456789',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: myFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // !NOMBRE
              CustomTextField(
                icon: Icons.person,
                label: 'Nombre',
                controller: TextEditingController(),
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(height: 10),
              // !EMAIL
              CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                formValues: formValues
                  ),
              const SizedBox(height: 10),
              // !CONTRASEÑA
              CustomTextField(
                icon: Icons.lock,
                label: 'Contraseña',
                controller: TextEditingController(),
                isPassword: true,
                formProperty: 'password',
                formValues: formValues
              ),

              // !ROL
              DropdownButtonFormField(
                value: 'Admin',
                items: const[
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'CEO', child: Text('CEO')),
                  DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                ], 
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                }
              ),
          
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if(!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text('Guardar datos')))
              )
            ],
          ),
        ),
      ),
    );
  }
}
