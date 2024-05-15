import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/features/splash/presentation/views/splash_view.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          bottomNavigationBarTheme:const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kColorBlack,
            backgroundColor: kColorWhite,
            selectedLabelStyle:TextStyle(fontSize:14),
            elevation: 0,
          ) ),

    );
  }
}

