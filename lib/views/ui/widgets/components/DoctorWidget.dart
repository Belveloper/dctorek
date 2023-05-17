import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container()
                .height(pSh(context: context, percentage: .08))
                .width(pSh(context: context, percentage: .08))
                .decorated(
                    color: kcSecondaryColor.withOpacity(.3),
                    shape: BoxShape.circle),
            Container()
                .height(pSh(context: context, percentage: .018))
                .width(pSh(context: context, percentage: .018))
                .decorated(
                    color: kcPrimaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: kcBackgroundColor))
                .positioned(right: 0),
          ],
        ),
        verticalSpaceSmall,
        // verticalSpaceSmall,
        CustomText(
          text: 'Dr. Bellamy N',
          color: kcTextColor,
          size: pSh(context: context, percentage: .017),
        ),
        verticalSpaceTiny,
        CustomText(
          text: 'Viralogist',
          weight: FontWeight.bold,
          color: const Color(0xff6B779A),
          size: pSh(context: context, percentage: .015),
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '⭐️ 4.5 (135 reviews)',
              weight: FontWeight.bold,
              color: const Color(0xff6B779A),
              size: pSh(context: context, percentage: .014),
            ),
          ],
        ),
      ],
    )
        .width(pSw(context: context, percentage: .28))
        .padding(
            all: pSh(context: context, percentage: .016),
            vertical: pSh(context: context, percentage: .010))
        .decorated(
            border: Border.all(color: kcTextColor.withOpacity(.2)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .03)));
  }
}
