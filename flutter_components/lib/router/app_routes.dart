import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_options.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  //MENU DE OPCIONES DONDE TENEMOS LAS RUTAS CON SUS ATRIBUTOS
  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        icon: Icons.home_max_outlined,
        name: 'HomeScreen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_sharp,
        name: 'ListView1Screen',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_sharp,
        name: 'ListView2Screen',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.taxi_alert,
        name: 'AlertScreen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard_sharp,
        name: 'CardScreen',
        screen: const CardScreen()),
  ];

  //DEVUELVE TODAS LAS RUTAS AÑADIDAS DE APPROUTES, ES DECIR ESTÁN YA IMPLEMENTADAS.
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
