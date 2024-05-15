import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyCartViewBody(),
      ),
    );
  }
}
