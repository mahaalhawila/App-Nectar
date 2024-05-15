import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/features/splash/presentation/views/widgets/splash_view_body.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SplashViewBody(),
      ),
    );
  }
}
