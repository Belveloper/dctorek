import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({
    super.key,
    required this.text,
    this.icon = 'assets/images/bell.png',
    this.color = kcPrimaryColor,
    required this.ontap,
    this.iconVisible = true,
  });
  String? text;
  String? icon;
  Color? color;
  final Function()? ontap;
  bool? iconVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        verticalSpaceTiny,
        Row(
          children: [
            iconVisible == true
                ? Container(
                    child: Image.asset(icon!),
                  )
                    .height(pSh(context: context, percentage: .07))
                    .width(pSh(context: context, percentage: .07))
                    .decorated(
                        color: color!.withOpacity(.1),
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .01)))
                : Container(),
            horizontalSpaceMedium,
            CustomText(
              text: text!,
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .018),
            ),
            Spacer(),
            RotatedBox(
              quarterTurns: 2,
              child: Icon(
                Icons.arrow_back_ios,
                color: color,
                size: pSh(context: context, percentage: .02),
              ),
            ),
          ],
        )
      ],
    ).gestures(onTap: ontap);
  }
}
