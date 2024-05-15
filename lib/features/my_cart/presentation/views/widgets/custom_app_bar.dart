import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 23,bottom:10),
      child: Center(child: Text('My Cart',style: Styles.textStyle20.copyWith(color: kColorBlack),)),
    );
  }
}
