import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpaceMedium,
            // verticalSpaceSmall,
            Container(
              child: Image.asset(
                'assets/images/ItexcLogo.png',
                color: kcPrimaryColor,
              ),
            )
                .height(pSh(context: context, percentage: .1))
                .width(pSh(context: context, percentage: 0.1)),
            verticalSpaceMedium,
            CustomText(
              text: 'Sign up',
              color: kcTextColor,
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .03),
            ),
            verticalSpaceMedium,
            verticalSpaceSmall,
            // verticalSpaceMedium,
            CustomText(
              text: 'Email',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Email'),
            verticalSpaceMedium,
            CustomText(
              text: 'Password',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Password'),
            verticalSpaceMedium,
            verticalSpaceMedium,
            CustomButton(
              text: 'Sign up',
              isGradient: true,
              onTap: () {
                Navigator.pushNamed(context, Routes.profileDetails);
              },
            ),
            verticalSpaceSmall,
            verticalSpaceSmall,
            CustomText(
              text: 'Forget the Password ?',
              color: kcPrimaryColor,
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .018),
            ).gestures(
              onTap: () {
                Navigator.pushNamed(context, Routes.forgotPassword);
              },
            ),
            verticalSpaceMedium,
            CustomText(
              text: 'or continue with',
              color: kcTextColor,
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .018),
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/fbLogo.png'),
                    horizontalSpaceSmall,
                    CustomText(
                      text: 'Facebook',
                      weight: FontWeight.bold,
                      color: kcTextColor,
                    ),
                    horizontalSpaceSmall,
                  ],
                )
                    .width(pSw(context: context, percentage: .35))
                    .padding(all: pSh(context: context, percentage: .013))
                    .decorated(
                        border: Border.all(color: const Color(0xffdadada)),
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .01))),
                Row(
                  children: [
                    Image.asset('assets/images/googleLogo.png'),
                    horizontalSpaceSmall,
                    CustomText(
                      text: 'Google',
                      weight: FontWeight.bold,
                      color: kcTextColor,
                    ),
                    horizontalSpaceSmall,
                  ],
                )
                    .width(pSw(context: context, percentage: .35))
                    .padding(all: pSh(context: context, percentage: .013))
                    .decorated(
                        border: Border.all(color: const Color(0xffdadada)),
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .01))),
              ],
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'you have an account ?',
                  weight: FontWeight.w500,
                  color: kcTextColor.withOpacity(.5),
                ),
                horizontalSpaceSmall,
                CustomText(
                  text: 'Sign In',
                  weight: FontWeight.w600,
                  color: kcPrimaryColor,
                ).gestures(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routes.signIn);
                  },
                ),
              ],
            ),
          ],
        )
            .safeArea()
            .padding(all: pSh(context: context, percentage: .022))
            .width(pSw(context: context))
            .height(pSh(context: context)),
      ),
    );
  }
}
