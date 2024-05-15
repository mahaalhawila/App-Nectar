import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/my_cart_list_view.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomAppBar(),
        const Divider(),
        const Expanded(child:MyCartListView() ,),
        GestureDetector(
                  onTap: (){
                   CustomBottomSheet(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal:25,vertical: 15 ),
                    child: CustomTextField(text: 'Go to Checkout', color:kPrimaryColor,
                        textaColor:kColorWhite,fontFamily: kGilroyBold,),
                  ),
                ),
      ],
    );

  }
}

