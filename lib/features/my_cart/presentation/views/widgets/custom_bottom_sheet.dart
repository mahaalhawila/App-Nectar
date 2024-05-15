import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/pament_bottom_sheet.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'item_bottom_sheet.dart';

Future CustomBottomSheet(context){
  return  showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
      ),
      context: context, builder:(context){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,),
                child: Row(children: [
                  Text('Checkout',style: Styles.textStyle24.copyWith(
                      color: kColorBlack
                  ),),
                  const Spacer(),
                  IconButton(onPressed:(){
                    Navigator.pop(context);
                  }, icon:const Icon(FontAwesomeIcons.close,
                    size: 20,
                    color:kColorBlack,
                  ),
                  )
                ],),
              ),
              const Divider(),
              const ItemBottomSheet(text: 'Delivery', title:'Select Method'),
              const PamentBottoomSheet(),
              const ItemBottomSheet(text: 'Promo Code', title:'Pick discount'),
              const ItemBottomSheet(text: 'Total Cost', title:'\$13.97'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SvgPicture.asset(AssetsData.h2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsData.home),
                    const Spacer(),
                    Text('Profile',style: Styles.textStyle14.copyWith(
                        color: kcolor
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kOrderAccepted);
                  },
                  child: const CustomTextField(text:'Place Order',
                      color: kPrimaryColor, textaColor: kColorWhite),
                ),
              ),
            ])
    );
  });
}