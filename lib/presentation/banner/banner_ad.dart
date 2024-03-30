import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hause_sallare/data/models/banner_ad/banner_ad_model.dart';
import 'package:hause_sallare/presentation/banner/controller/banner_ad_controller.dart';

class BannerAd extends StatelessWidget {
  const BannerAd({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 320,
      child: GetBuilder<BannerAdController>(
        init: BannerAdController(),
        builder: (controller) {
          return PageView.builder(
            itemCount: controller.itemBannerAd.length,
            controller: controller.pageController,
            itemBuilder: (ctx, index) {
              controller.transformMatrix(index);
              BannerAdModule banner = controller.itemBannerAd[index];
              return _buildPageItem(banner, size,controller);
            },
          );
        },
      ),
    );
  }
}

Widget _buildPageItem(BannerAdModule banner, Size size,BannerAdController controller) {
  return Transform(
    transform: controller.matrix4,
    child: Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10,right: 10,top: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(banner.image!), fit: BoxFit.fill,),),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 40,left: 40,right: 40),
            padding: const EdgeInsets.all(8),
            // width: 250,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade800,
                  blurRadius: 15,
                  offset: Offset(4, 4),
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 0.2
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  banner.title!,
                ),
                Text(
                  "${banner.price!} \$",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("New"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("${banner.kv!} kv"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${banner.area!}"),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
