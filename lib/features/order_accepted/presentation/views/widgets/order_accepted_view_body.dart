import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class  OrderAcceptedViewBody extends StatelessWidget {
  const  OrderAcceptedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     return
    CustomScrollView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
              child:Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:59),
                      child: SvgPicture.asset(AssetsData.done),
                    ),
                    const SizedBox(height: 63,),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:40),
                        child: Text('Your Order has been accepted',
                          textAlign:TextAlign.center
                          ,style: Styles.textStyle28.copyWith(
                              color: kColorBlack
                          ),),
                      ),
                    ),

                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:35),
                        child: Text('Your items has been placcd and is on it’s way to being processed',
                          textAlign:TextAlign.center
                          ,style: Styles.textStyle16.copyWith(
                              color: kColorBlack
                          ),),
                      ),
                    ),

                    const SizedBox(height: 110,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                          onTap: (){},
                          child: const CustomTextField(text: 'Track Order', color:kPrimaryColor, textaColor: kColorWhite)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child:GestureDetector(
                          onTap: (){},
                          child: const CustomTextField(text: 'Back to home',
                              color:kColorWhite, textaColor: kColorBlack)),
                    ),

                  ],
                ),
              )
          )
        ]);

  }
}
