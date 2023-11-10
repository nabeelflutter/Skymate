import 'package:flutter/material.dart';
import 'package:tech_cscommunity/routes/pages.dart';
import 'package:tech_cscommunity/views/screens/our_services/our_services_screen.dart';

class Routes {
static Route<dynamic>generateRoutes(RouteSettings routeSettings){
  switch (routeSettings.name) {
    case PageName.ourServicesScreen:
      return MaterialPageRoute(
          builder: (context) =>  OurServicesScreen(),
          settings: routeSettings
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('No route define'),
          ),
        ),
      );
  }
}
}