import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/views/doctor_page/doctor_page_view.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class AppointementBookinPageView extends StatelessWidget {
  const AppointementBookinPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SizedBox(
        height: screenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarCustom(
              context: context,
              title: 'My Appointements',
              icon: 'assets/images/more vert.png',
            ),
            verticalSpaceMedium,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container()
                    .height(pSh(context: context, percentage: .1))
                    .width(pSh(context: context, percentage: .1))
                    .decorated(
                        color: kcTextColor.withOpacity(.08),
                        shape: BoxShape.circle),
                verticalSpaceSmall,
                CustomText(
                  text: 'Dr. Eleanor Pena',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceSmall,
                CustomText(
                  text: 'Viralogist',
                  size: pSh(context: context, percentage: .017),
                  weight: FontWeight.w600,
                  color: const Color(0xff6B779A),
                ),
              ],
            ).center(),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DoctorStats(),
                DoctorStats(),
                DoctorStats(),
              ],
            ),
            verticalSpaceMedium,
            CustomText(
              text: 'Visit Time',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .02),
              color: const Color(0xff222b45),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'Mornning',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'Monday , March 23 2023',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceSmall,
            CustomText(
              text: '10 : 00 - 10 : 30 AM',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceMedium,
            CustomText(
              text: 'Patient Information',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .02),
              color: const Color(0xff222b45),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'Full Name : seddik walid',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'Age : 24- 45',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'Phone  : + 43 5454-1554-2514',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            verticalSpaceSmall,
            CustomText(
              maxLines: 5,
              text:
                  'Comment :  I have had a heart problem for the past 3 days, I often feel tired and out of breath',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .016),
            ),
            CustomButton(
              text: 'Mark as completed',
              isGradient: true,
            )
          ],
        ).safeArea().padding(all: pSh(context: context, percentage: .025)),
      ),
    );
  }
}
