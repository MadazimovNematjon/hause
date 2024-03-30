import 'package:get/get.dart';
import 'package:hause_sallare/presentation/home/controller/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
