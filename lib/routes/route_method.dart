//app file
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'route_name.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.login, page: () =>  LoginScreen()),
  ];
}
