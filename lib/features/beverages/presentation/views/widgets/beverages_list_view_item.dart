import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/widgets/custom_box_add.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BeveragesListViewItem extends StatelessWidget {
  const BeveragesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color:kColorBorder),
          borderRadius: BorderRadius.circular(16),
          color:Colors.white60
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 19,left:20,right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(AssetsData.rectangle,)),
            const SizedBox(height: 13,),
            const SizedBox(
                width:123,
                child: Text('Sprite Can',style: Styles.textStyle16,
                )),
            const SizedBox(height:11,),
            Text('355ml, Price',style: Styles.textStyle14.copyWith(
              color:kColorGrey
            ),
            ),
            const SizedBox(height: 18,),
            Row(
              children: [
                Text('\$1.50',style: Styles.textStyle18.copyWith(
                    color:kColorBlack
                ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                  },
                    child:  const CustomBoxAdd(
                      iconData:FontAwesomeIcons.add,
                      color: kColorWhite, colorFill:kPrimaryColor,
                      colorBorder: kPrimaryColor,
                      height:45.67,
                      width: 45.67,))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
