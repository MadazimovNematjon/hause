import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hause_sallare/data/models/banner_ad/banner_ad_model.dart';

class BannerAdController extends GetxController {
  PageController pageController =
      PageController( viewportFraction: 0.85);
  int activePage = 0;
  var currPageValue = 0.9;
  Timer? timer;
  Matrix4 matrix4 = Matrix4.identity();
  double scaleFactor = 0.8;
  int? index;
  List<BannerAdModule> itemBannerAd = [
    BannerAdModule(
        title: "1 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_1.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "2 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_2.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "3 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_3.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "4 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_4.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "5 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_5.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "6 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_6.jpeg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "7 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_7.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "8 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_8.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "9 Hona",
        kv: "10",
        area: "3 Sotix",
        price: "4000",
        image: "assets/images/img_9.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
    BannerAdModule(
        title: "10 Hona",
        kv: "10",
        area: "10 Sotix",
        price: "4000",
        image: "assets/images/img_10.jpg",
        content:
            "The Data Layer is the foundational layer responsible for handling data operations in a Flutter app. Its primary purpose is to abstract and encapsulate data sources, ensuring that the rest of the application doesn't need to know the specifics of data retrieval and storage"),
  ];

  @override
  void onInit() {
    super.onInit();
    startTimer();
    pageController.addListener(() {
      currPageValue = pageController.page!;
      update();
    });
  }

  @override
  void onClose() {
    super.onClose();
    timer!.cancel();
    pageController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }




  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.page == itemBannerAd.length - 1) {
        pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        pageController.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }


  /// Transforms the matrix for the banner advertisement at the given index.
  void transformMatrix(int index) {
    double _height = 220;

    if (index == currPageValue.floor()) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() + 1) {
      var currScale = scaleFactor + (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
  }
}


