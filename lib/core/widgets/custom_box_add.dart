import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constant.dart';

class CustomBoxAdd extends StatelessWidget {
  const CustomBoxAdd({super.key, required this.iconData,
    required this.color, required this.colorFill,
    required this.colorBorder, this.borderRadius,
    required this.height,
    required this.width,
    this.size});


final IconData iconData;
final Color color;
final Color colorFill;
final Color colorBorder;
final BorderRadius? borderRadius ;
final double height;
final double width;
final double? size;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: colorBorder),
            borderRadius: borderRadius??BorderRadius.circular(15),
            color: colorFill
        ),
        child:  Icon(iconData,size:size??20,color: color,)
    );
  }
}
