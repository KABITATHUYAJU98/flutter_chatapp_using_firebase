
import 'package:flutter_chatapp/common/pages/signin/binding.dart';
import 'package:flutter_chatapp/common/pages/signin/view.dart';
import 'package:flutter_chatapp/common/pages/welcome/index.dart';
import 'package:flutter_chatapp/common/routes/names.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = AppRoutes.INITIAL;
  // ignore: constant_identifier_names
  static const Application = AppRoutes.Application;
  // static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(), 
      )
  ];
}
