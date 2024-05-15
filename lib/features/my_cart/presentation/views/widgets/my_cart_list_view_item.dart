import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_box_add.dart';

class MyCartListViewItem extends StatelessWidget {
  const MyCartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child: Row(
        children: [
          const Image(height: 86,width: 86,
              image: AssetImage(AssetsData.pngfuel,)),
          const SizedBox(width: 27,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Row(
              children: [
                Text('Egg Chicken Red',style: Styles.textStyle16.copyWith(
                  color: kColorBlack,
                  fontFamily: kGilroyBold
                ),),
             const SizedBox(width: 78,),
    GestureDetector(
      onTap: (){},
        child: const Icon(Icons.close,size: 25,color: kGrey)),
              ],
            ),
            Text('4pcs, Price',style: Styles.textStyles14.copyWith(
                color: kColorGrey,
              fontFamily: kGilroyBold
            ),),
         const SizedBox(height: 10,),
         Row(
              children: [
               const CustomBoxAdd(iconData:FontAwesomeIcons.minus,
                    color: kGrey,
                    colorFill:kColorWhite, colorBorder:kColorBorder, height: 45.67, width: 45.67,),
                const SizedBox(width: 20,),
                Text('1',style: Styles.textStyle16.copyWith(
                    color: kColorBlack,
                    fontFamily: kGilroyBold
                ),),
                const SizedBox(width: 20,),
                 const CustomBoxAdd(iconData:FontAwesomeIcons.add,
                  color: kPrimaryColor,
                  colorFill:kColorWhite, colorBorder:kColorBorder, height: 45.67, width:45.67,),
                const SizedBox(width: 40,),
                Text('\$1.99',style: Styles.textStyle18.copyWith(
                    color: kColorBlack,
                    fontFamily: kGilroyBold
                ),),

              ],
            ),

          ],),
        ],
      ),
    );
  }
}
