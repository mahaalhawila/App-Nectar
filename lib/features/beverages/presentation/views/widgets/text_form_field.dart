import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
 const CustomTextFormField({super.key, required this.text, this.icon,});
final String text;
final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 25,),
      child: TextFormField(
        decoration: InputDecoration(
        hintText: text,
        suffixIcon:  icon ,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color:kPrimaryColor)
        ),
        enabledBorder:  UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.grey.shade300)
        ) ,
        hintStyle:Styles.textStyle18.copyWith(
          color: kColorGrey
        )
        ),
      ),
    );
  }
}
