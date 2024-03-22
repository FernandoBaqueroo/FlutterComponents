import 'package:flutter/material.dart';
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
      initialRoute: 'home',
      routes: {
        'listview1': ( BuildContext context ) => const ListView1Screen(),
        'home': ( BuildContext context ) => const HomeScreen(),
        'listview2': ( BuildContext context ) => const ListView2Screen(),
        'alert': ( BuildContext context ) => const AlertScreen(),
        'card': ( BuildContext context ) => const CardScreen()
      },
      //Nos sirve para trabajar con rutas dinámicas. Puede recibir argumentos.
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      },
    );
  }
}