import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 23),
      child: Center(child: Text(text,style: Styles.textStyle20,)),
    );
  }
}
