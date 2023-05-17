import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appBarCustom(
              context: context,
              icon: '',
              title: 'Profile Details',
            ),
            verticalSpaceSmall,
            verticalSpaceTiny,
            Container(
              child: Image.asset(
                'assets/images/person.png',
                height: pSh(context: context, percentage: .02),
                width: pSh(context: context, percentage: .02),
              ),
            )
                .height(pSh(context: context, percentage: .12))
                .width(pSh(context: context, percentage: .12))
                .decorated(
                    shape: BoxShape.circle,
                    color: const Color(0xffD8D8D8),
                    border: Border.all(
                        color: kcTextColor.withOpacity(.4), width: 1)),
            verticalSpaceMedium,
            CustomText(
              text: 'Full Name',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .018),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Full Name'),
            verticalSpaceSmall,
            verticalSpaceTiny,
            CustomText(
              text: 'Email',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .018),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,

            CustomTextField(hintText: 'Email'),
            verticalSpaceSmall,
            verticalSpaceTiny,
            CustomText(
              text: 'Gender',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .018),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(
              hintText: 'Gender',
              suffix: DropdownButton(
                underline: const SizedBox(),
                items: const [
                  DropdownMenuItem(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'Female',
                    child: Text('Female'),
                  )
                ],
                onChanged: (selected) {},
              ).paddingDirectional(horizontal: 5),
            ),
            verticalSpaceSmall,
            verticalSpaceTiny,
            CustomText(
              text: 'Date Of birth',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .018),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Date Of birth'),
            verticalSpaceSmall,
            verticalSpaceTiny,
            CustomText(
              text: 'Address',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .018),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Address'),
            const Spacer(),
            CustomButton(
              text: 'Next',
              isGradient: true,
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.main);
              },
            ),
            verticalSpaceSmall,
          ],
        )
            .safeArea()
            .height(pSh(context: context))
            .width(pSw(context: context))
            .padding(all: pSh(context: context, percentage: .019)),
      ),
    );
  }
}
