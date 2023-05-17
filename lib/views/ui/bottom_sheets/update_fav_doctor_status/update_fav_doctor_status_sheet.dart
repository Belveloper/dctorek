import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/HorizontalDoctorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UpdateDoctor extends StatelessWidget {
  const UpdateDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(pSh(context: context, percentage: .025)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(pSh(context: context, percentage: .02)),
          topRight: Radius.circular(pSh(context: context, percentage: .02)),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HorizontalDoctorWidget(),
          verticalSpaceMedium,
          CustomText(
            text: 'Remove from favoeite ?',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'cancel',
                hasBorder: true,
                backgroundColor: kcBackgroundColor,
                textColor: kcPrimaryColor,
                width: 0.42,
              ),
              CustomButton(
                text: 'Yes, Remove',
                width: 0.42,
                isGradient: true,
              ),
              // CustomButton(text: 'cancel'),
            ],
          )
        ],
      ),
    );
  }
}
