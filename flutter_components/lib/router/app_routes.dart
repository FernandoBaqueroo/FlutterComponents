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
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_sharp,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animation',
        icon: Icons.animation_outlined,
        name: 'Animations Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Inputs Screen',
        screen: const InputScreen()),
    MenuOption(
        route: 'sliders',
        icon: Icons.slideshow_rounded,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        icon: Icons.list_sharp,
        name: 'Infinite Scroll & Pull to Refresh',
        screen: const ListViewBuilderScreen())
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
