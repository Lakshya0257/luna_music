import 'package:get/get.dart';
import 'package:luna/app/modules/searchpage/binding/searchbinding.dart';
import 'package:luna/app/modules/searchpage/view/searchpage.dart';

import '../app/modules/homepage/binding/homepage_binding.dart';
import '../app/modules/homepage/view/first_tab.dart';
import '../app/modules/homepage/view/homepage.dart';
import '../app/modules/login/binding/loginbinding.dart';
import '../app/modules/login/view/loginpage.dart';


class AppRoutes {
  static final pages = [
    GetPage(
      name: LoginPage.route,
      page: () => const LoginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: HomePage.route,
      page: () => const HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: FirstTab.route,
      page: () => const FirstTab(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: SearchPage.route,
      page: () => const SearchPage(),
      binding: SearchPageBinding(),
    ),
    // GetPage(
    //   name: FirstPage.route,
    //   page: () => FirstPage(),
    // ),
  ];
}
