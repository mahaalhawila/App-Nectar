import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class ItemBottomSheet extends StatelessWidget {
  const ItemBottomSheet({super.key, required this.text, required this.title});
final String text;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(

            children: [
              Text(text,style:Styles.textStyle18.copyWith(
                  color: kColorGrey
              ),),
              const Spacer(),
              Text(title,style: Styles.textStyle16.copyWith(
                  color: kColorBlack
              ),),

              IconButton(icon:const Icon(Icons.arrow_forward_ios,
                size: 15,color:kColorBlack,), onPressed: () {  }, )
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
