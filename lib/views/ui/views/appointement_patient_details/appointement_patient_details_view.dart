import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/dialogs/appointement_confirmation/appointement_confirmation_dialog.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class AppointementPatientDetails extends StatelessWidget {
  const AppointementPatientDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarCustom(icon: '', context: context, title: 'Patient Details'),
            verticalSpaceMedium,
            CustomText(
              text: 'Full Name',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Full Name'),
            verticalSpaceMedium,
            CustomText(
              text: 'Select your age  Range',
              color: kcTextColor,
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .017),
            ),
            verticalSpaceSmall,
            ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CustomText(
                  text: '1-17',
                  color: kcPrimaryColor,
                )
                    .center()
                    .padding(vertical: pSh(context: context, percentage: 0.01))
                    .width(pSw(context: context, percentage: .26))
                    .decorated(
                        color: kcBackgroundColor,
                        border: Border.all(color: kcPrimaryColor),
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .03)))
                    .padding(right: pSh(context: context, percentage: .01));
              },
            ).height(pSh(context: context, percentage: .05)),
            verticalSpaceMedium,
            CustomText(
              text: 'Phone number',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Phone number'),
            verticalSpaceMedium,
            CustomText(
              text: 'Gender',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(hintText: 'Gender'),
            verticalSpaceMedium,
            CustomText(
              text: 'Write your problem',
              color: kcTextColor,
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .02),
            ).alignment(Alignment.centerLeft),
            verticalSpaceSmall,
            // verticalSpaceSmall,
            CustomTextField(
              hintText: 'Tell doctor abour your problem',
              maxLines: 6,
            ),
            const Spacer(),
            CustomButton(
              text: 'Next',
              isGradient: true,
              onTap: () {
                //viewModel.showConfirmationDialog();
                appointementConfirmationDialog(context);
              },
            )
          ],
        ).safeArea().padding(
              all: pSh(context: context, percentage: .025),
            ));
  }
}
