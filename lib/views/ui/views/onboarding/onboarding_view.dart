import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/views/onboarding/on_boarding_cubit.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:styled_widget/styled_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kcBackgroundColor,
            body: Column(
              children: [
                PageView.builder(
                    onPageChanged: (value) {
                      OnBoardingCubit.get(context).currentIndexSelection(value);
                    },
                    itemCount: onBoradingData.length,
                    controller: OnBoardingCubit.get(context).controller,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Image.asset(onBoradingData[index]['image'])
                                  .padding()
                                  .alignment(Alignment.bottomCenter),
                            )
                                .height(pSh(context: context, percentage: .5))
                                .width(pSw(context: context))
                                .safeArea()
                                .decorated(
                                    color: onBoradingData[index]['color']),
                          ),
                          verticalSpaceMedium,
                          CustomText(
                            text: onBoradingData[index]['title'],
                            color: kcPrimaryColor,
                            weight: FontWeight.bold,
                            size: pSh(context: context, percentage: .025),
                          ),
                          verticalSpaceSmall,
                          verticalSpaceSmall,
                          verticalSpaceTiny,
                          CustomText(
                            text: onBoradingData[index]['subTitle'],
                            textAlign: TextAlign.center,
                            color: kcTextColor,
                            weight: FontWeight.w500,
                            maxLines: 3,
                            size: pSh(context: context, percentage: .018),
                          ).width(pSw(context: context, percentage: .9)),
                        ],
                      ).width(pSw(context: context)).decorated();
                    }).expanded(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PageViewDotIndicator(
                      currentItem: OnBoardingCubit.get(context).currentIndex,
                      count: onBoradingData.length,
                      unselectedColor: kcTextColor.withOpacity(.2),
                      selectedColor: kcPrimaryColor,
                    ),
                    verticalSpaceMedium,
                    verticalSpaceMedium,
                    verticalSpaceMedium,
                    CustomButton(
                      text: OnBoardingCubit.get(context).currentIndex != 2
                          ? 'Skip'
                          : 'Next',
                      backgroundColor: kcBackgroundColor,
                      textColor: kcPrimaryColor,
                      hasBorder: true,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.landing);
                      },
                    ),
                    verticalSpaceMedium,
                    CustomButton(
                      text: 'Sign Up',
                      isGradient: true,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.signUp);
                      },
                    ),
                  ],
                ).padding(all: pSh(context: context, percentage: .02))
              ],
            ),
          );
        },
      ),
    );
  }
}
