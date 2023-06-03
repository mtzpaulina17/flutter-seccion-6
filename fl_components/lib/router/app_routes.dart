import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
      //todo: borrar home 
      //MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: const HomeScreen()),
      MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'listview tipo 1', screen: const Listview1Screen()),
      MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'listview tipo 2', screen: const Listview2Screen()),
      MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas', screen: const AlertScreen()),
      MenuOption(route: 'card', icon: Icons.card_giftcard_rounded, name: 'card', screen: const CardScreen()),
      MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'avatar', screen: const AvatarScreen()),
      MenuOption(route: 'animated', icon: Icons.play_circle_outline_outlined, name: 'animated', screen: const AnimatedScreen()),
      MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Inputs', screen: const InputsScreen()),
      MenuOption(route: 'slider', icon: Icons.slow_motion_video, name: 'sliders and checks', screen: const SilderScreen()),
       MenuOption(route: 'listviewbuldier', icon: Icons.build_circle_outlined, name: 'InfiniteScrol and Pull to refresh', screen: const ListViwBuldierScreen())


  ];

  static Map<String, Widget Function (BuildContext)> getAppRoutes(){
   
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context ) => const HomeScreen()});

    for (final option in menuOptions){
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen});
    }


    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : ( BuildContext context ) => const HomeScreen(),
        'listview1': ( BuildContext context ) => const Listview1Screen(),
        'listview2': ( BuildContext context ) => const Listview2Screen(),
        'alert'    : ( BuildContext context ) => const AlertScreen(),
        'card'     : ( BuildContext context ) => const CardScreen()
  };
  */

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  }
}