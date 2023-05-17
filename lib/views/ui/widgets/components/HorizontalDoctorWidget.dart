import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../shared/colorManager/app_colors.dart';
import '../../shared/responsivityManager/ui_helpers.dart';
import 'CustomActionButtom.dart';

class HorizontalDoctorWidget extends StatelessWidget {
  HorizontalDoctorWidget({
    super.key,
    this.actionIcon = 'assets/images/heart.png',
    this.isHistory = false,
  });
  String? actionIcon;
  bool? isHistory;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/doctorFemale.png').clipRRect(
          topLeft: pSh(context: context, percentage: .01),
          bottomLeft: pSh(context: context, percentage: .01),
        ),
        horizontalSpaceMedium,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Dr. Eleanor Pena',
              weight: FontWeight.bold,
            ),
            verticalSpaceTiny,
            isHistory == false
                ? CustomText(
                    text: '⭐️ 4.3 (130 reviews)',
                    size: pSh(context: context, percentage: .015),
                  )
                : Row(children: [
                    CustomText(
                      text: 'messaging: ',
                      size: pSh(context: context, percentage: .015),
                    ),
                    CustomText(
                      text: 'Completed',
                      size: pSh(context: context, percentage: .015),
                      color: Colors.green,
                    ),
                  ]),
            verticalSpaceTiny,
            isHistory == false
                ? CustomText(
                    text: 'Cardio specialistr - Oran Hospital',
                    size: pSh(context: context, percentage: .015),
                  ).width(pSw(context: context, percentage: .43))
                : CustomText(
                    text: '10:00 10:30 PM',
                    size: pSh(context: context, percentage: .015),
                  ),
          ],
        ).center(),
        const Spacer(),
        customActionBar(context: context, icon: actionIcon, ontap: () {}),
        horizontalSpaceSmall,
      ],
    )
        .width(pSw(context: context))
        .height(pSh(context: context, percentage: .12))
        .decorated(
            color: kcBackgroundColor,
            border: Border.all(color: kcTextColor.withOpacity(.1)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .01)));
  }
}
