import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../shared/colorManager/app_colors.dart';
import '../../shared/responsivityManager/ui_helpers.dart';

class SpecialityWidget extends StatelessWidget {
  SpecialityWidget({
    super.key,
    required this.speciality,
  });
  Map<String, dynamic>? speciality;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.hardEdge, children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            speciality!['icon'],
            height: pSh(context: context, percentage: .05),
          ),
          verticalSpaceTiny,
          CustomText(
            text: speciality!['title'],
            color: kcBackgroundColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ),
          verticalSpaceTiny,
          CustomText(
            text: speciality!['subtitle'],
            color: kcBackgroundColor.withOpacity(.4),
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ),
        ],
      ).center(),
      Container()
          .height(pSh(context: context, percentage: .09))
          .width(pSh(context: context, percentage: .09))
          .decorated(
              color: kcBackgroundColor.withOpacity(.2), shape: BoxShape.circle)
          .positioned(
              left: -pSh(context: context, percentage: .03),
              top: -pSh(context: context, percentage: .03))
    ])
        .width(pSw(context: context, percentage: .4))
        .height(pSh(context: context, percentage: .1))
        .decorated(
            color: speciality!['color'],
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .02)));
  }
}
