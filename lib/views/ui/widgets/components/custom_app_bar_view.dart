import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomActionButtom.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

Widget appBarCustom(
        {BuildContext? context,
        String? title,
        String? icon,
        Function()? ontap}) =>
    Row(
      children: [
        const Icon(
          Icons.arrow_back,
          color: kcPrimaryColor,
        ).padding(all: pSh(context: context!, percentage: .01)).gestures(
            onTap: () {
          Navigator.pop(context);
        }),
        horizontalSpaceMedium,
        CustomText(
          text: title,
          color: kcTextColor,
          weight: FontWeight.bold,
          size: pSh(context: context, percentage: .024),
        ),
        const Spacer(),
        icon == ''
            ? Container()
            : customActionBar(context: context, icon: icon, ontap: ontap)
      ],
    ).padding(all: pSh(context: context, percentage: .0));
