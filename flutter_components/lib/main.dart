import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
//METIENDO LAS RUTAS EN SCREENS.DART, TIENES TODAS LAS RUTAS EN UN SOLO IMPORT
import 'package:flutter_components/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const CardScreen(),
      //ADMINISTRACIÓN DE RUTAS DE PANTALLAS
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      //Nos sirve para trabajar con rutas dinámicas. Puede recibir argumentos.
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
}