import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ExploreListViewItem extends StatelessWidget {
  const ExploreListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color:kColorOrange),
          borderRadius: BorderRadius.circular(16),
          color:kColorOrange.withOpacity(.1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsData.image,
            //height: 93,width: 93,
          ),
          const SizedBox(height: 10,),
          const SizedBox(
              width:92,
              child: Center(
                child: Text('Cooking Oil & Ghee',style: Styles.textStyle16,
                ),
              ))
        ],
      ),
    );
  }
}
