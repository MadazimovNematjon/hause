import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hause_sallare/config.dart';
import 'package:hause_sallare/config/router/bindings.controllers/bindings.dart';
import 'package:hause_sallare/config/router/bindings.controllers/login_binding.dart';
import 'package:hause_sallare/config/router/routes.dart';
import 'package:hause_sallare/screens.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  const EnvironmentsBadge({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    ),
  ];
}
