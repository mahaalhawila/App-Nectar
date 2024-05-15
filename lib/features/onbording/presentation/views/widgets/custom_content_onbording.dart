import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CustomContentOnbording extends StatelessWidget {
  const CustomContentOnbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          image: const AssetImage(
            AssetsData.photo,
          ),),
        Padding(
          padding: const EdgeInsets.only(top:460),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsData.group),
              const SizedBox(height: 5,),
              const Image(
                image: AssetImage(
                  AssetsData.welcome,
                ),),
              const SizedBox(height:33,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:34),
                child: Text('Ger your groceries in as fast as one hour',style: Styles.textStyle15.copyWith(
                    color: kColorWhite
                ),),
              ),
              const SizedBox(height:42,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child:
                GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kBottonNavBar);
                  },
                    child:  const CustomTextField( text:' Get Started',
                      color:kPrimaryColor,
                      textaColor:kColorWhite,)),
              )
            ],
          ),
        )


      ],
    );
  }
}
