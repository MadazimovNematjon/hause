import 'package:flutter/material.dart';
import 'package:hause_sallare/presentation/banner/banner_ad.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            BannerAd(),
          ],
        )
      ),
    );
  }
}
