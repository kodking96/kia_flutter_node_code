import 'package:get/get.dart';
import 'package:web_a/constants/app_screens.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(name: _Paths.home, page: () => HomeScreen(), bindings: []),
  ];
}
