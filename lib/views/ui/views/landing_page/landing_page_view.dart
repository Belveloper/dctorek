import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            child: Image.asset(
              'assets/images/ItexcLogo.png',
              color: kcPrimaryColor,
            ),
          ).center(),
          const Spacer(),
          CustomButton(
            text: 'Sign up',
            isGradient: true,
            onTap: () {
              //goToSignUp();
              Navigator.pushNamed(context, Routes.signIn);
            },
          ),
          verticalSpaceMedium,
          CustomButton(
            text: 'Sign in',
            hasBorder: true,
            backgroundColor: kcBackgroundColor,
            textColor: kcPrimaryColor,
            onTap: () {
              Navigator.pushNamed(context, Routes.signIn);
            },
          ),
          verticalSpaceMedium,
        ],
      )
          .height(pSh(context: context))
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .019)),
    );
  }
}
