import 'package:flutter/cupertino.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, required this.color, required this.textaColor, this.fontFamily});
//final double width;
final String text;
final Color color;
final Color textaColor;
final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width ,
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: color
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical:18,),
        child: Center(
          child: Text(text,style:Styles.textStyle18.copyWith(
            color: textaColor,
                fontFamily: fontFamily
          ) ,),
        ),
      ),
    );
  }
}
