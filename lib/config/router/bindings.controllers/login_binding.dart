import 'package:get/get.dart';
import 'package:hause_sallare/presentation/auth/login/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }


}