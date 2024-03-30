import 'package:get/get.dart';
import 'package:hause_sallare/presentation/auth/signup/controller/signup_controller.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
