import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class PamentBottoomSheet extends StatelessWidget {
  const PamentBottoomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(

            children: [
              Text('Pament',style:Styles.textStyle18.copyWith(
                  color: kColorGrey
              ),),
              Spacer(),
              SvgPicture.asset(AssetsData.card),
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
