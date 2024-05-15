import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/widgets/custom_box_add.dart';
import 'package:nectar/features/beverages/presentation/views/widgets/bottom_sheet.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BeveragesCustomAppBar extends StatelessWidget {
  const BeveragesCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 23),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: SvgPicture.asset(AssetsData.back_arrow,)),
      const SizedBox(width:110 ,),
      const Text(
      'Beverages',style: Styles.textStyle20,),
        const Spacer(),
           GestureDetector(
             onTap: (){
               bottomSheet(context);
             },
             child: CustomBoxAdd(
                iconData: FontAwesomeIcons.add,
                color: kColorWhite,
                colorFill: kPrimaryColor,
                colorBorder: kPrimaryColor,
                height: 35,
                width: 35,
              borderRadius:BorderRadius.circular(10),
               size: 18,
          ),
           )
        ],
      ),
    );
  }
}
