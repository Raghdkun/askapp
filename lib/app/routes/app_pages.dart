import 'package:get/get.dart';
import 'package:askapp/app/modules/home_module/home_binding.dart';
import 'package:askapp/app/modules/home_module/home_page.dart';
import 'package:askapp/app/modules/splash_module/splash_page.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn, 
      transitionDuration: const Duration(milliseconds: 1600)
    ),
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),
      transition: Transition.fadeIn, 
      
      transitionDuration: const Duration(milliseconds: 1600)
    ),
  ];
}
