import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';
import 'text_form_field.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/utils/styles.dart';

PersistentBottomSheetController bottomSheet(context){
  return showBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
      ),
      backgroundColor: kColor,
      context: context, builder: (context){
    return SizedBox(
      height:430,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,),
              child: Row(children: [
                Text('Add',style: Styles.textStyle24.copyWith(
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
            const CustomTextFormField(text: 'Name',),
            const CustomTextFormField(text: 'Description',),
            const CustomTextFormField(text: 'Price',),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Image',style:Styles.textStyle18.copyWith(
                          color: kColorGrey
                      ),),
                      const Spacer(),
                      IconButton(icon:const Icon(Icons.arrow_forward_ios,
                        size: 15,color:kColorBlack,), onPressed: () {  }, )
                    ],
                  ),
                  const Divider()
                ],
              ),
            ),
            const SizedBox(height: 40,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomTextField(text:'Add Item', color: kPrimaryColor, textaColor: kColorWhite),
            )

          ],
        ),
      ),
    );
  });
}