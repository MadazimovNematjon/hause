
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'config/router/navigation/navigation.dart';
import 'config/router/routes.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
      // theme: AppThemes.dark,
      // themeMode: ThemeMode.dark,
      // darkTheme: AppThemes.dark,

    );
  }
}