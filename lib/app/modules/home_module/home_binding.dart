import 'package:askapp/app/data/api/api_connect.dart';
import 'package:get/get.dart';
import 'package:askapp/app/data/provider/home_provider.dart';
import 'package:askapp/app/modules/home_module/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        provider: HomeProvider(ApiConnect()),
      ),
    );
  }
}
