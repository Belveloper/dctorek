import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

class SelectretrievingPasswordMethode extends StatelessWidget {
  SelectretrievingPasswordMethode({
    Key? key,
    required this.index,
    required this.onSmsTap,
    required this.onEmailTap,
  }) : super(key: key);
  int index;
  Function()? onSmsTap;
  Function()? onEmailTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text:
              'Select which contact details should we use to reset your password',
          color: kcTextColor,
          size: pSh(context: context, percentage: .018),
        ),
        verticalSpaceMedium,
        Container(
          child: Row(children: [
            horizontalSpaceSmall,
            Container(
              child: Icon(
                Icons.message,
                color: kcPrimaryColor,
              ),
            )
                .height(pSh(context: context, percentage: .08))
                .width(pSh(context: context, percentage: .08))
                .decorated(
                    color: kcSecondaryColor.withOpacity(.2),
                    shape: BoxShape.circle),
            horizontalSpaceMedium,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'via SMS',
                  color: kcTextColor.withOpacity(.4),
                  size: pSh(context: context, percentage: .015),
                  weight: FontWeight.bold,
                ),
                verticalSpaceSmall,
                CustomText(
                  text: '+6282******39',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ]),
        )
            .width(pSw(context: context))
            .height(pSh(context: context, percentage: .14))
            .padding(all: pSh(context: context, percentage: .009))
            .decorated(
                border: Border.all(
                    color: index == 0 ? kcPrimaryColor : Colors.transparent),
                color: kcBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff5A6CEA).withOpacity(.08),
                    spreadRadius: 0,
                    blurRadius: 50,
                    offset: Offset(12, 26), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .019)))
            .gestures(onTap: onSmsTap),
        verticalSpaceSmall,
        verticalSpaceSmall,
        Container(
          child: Row(children: [
            horizontalSpaceSmall,
            Container(
              child: Icon(
                Icons.email,
                color: kcPrimaryColor,
              ),
            )
                .height(pSh(context: context, percentage: .08))
                .width(pSh(context: context, percentage: .08))
                .decorated(
                    color: kcSecondaryColor.withOpacity(.2),
                    shape: BoxShape.circle),
            horizontalSpaceMedium,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'via Email',
                  color: kcTextColor.withOpacity(.4),
                  size: pSh(context: context, percentage: .015),
                  weight: FontWeight.bold,
                ),
                verticalSpaceSmall,
                CustomText(
                  text: 'ex***le@yourdomain.com',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ]),
        )
            .width(pSw(context: context))
            .height(pSh(context: context, percentage: .14))
            .padding(all: pSh(context: context, percentage: .009))
            .decorated(
                border: Border.all(
                    color: index == 1 ? kcPrimaryColor : Colors.transparent),
                color: kcBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff5A6CEA).withOpacity(.08),
                    spreadRadius: 0,
                    blurRadius: 50,
                    offset: Offset(12, 26), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .019)))
            .gestures(onTap: onEmailTap),
      ],
    );
  }
}
