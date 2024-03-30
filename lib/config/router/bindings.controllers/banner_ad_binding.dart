import 'package:get/get.dart';
import 'package:hause_sallare/presentation/banner/controller/banner_ad_controller.dart';

class BannerAdBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BannerAdController>(() => BannerAdController());
  }


}