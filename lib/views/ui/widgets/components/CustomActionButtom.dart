import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

Widget customActionBar(
        {BuildContext? context, String? icon, Function()? ontap}) =>
    Image.asset(
      icon!,
      color: kcPrimaryColor,
      height: pSh(context: context!, percentage: .02),
      width: pSh(context: context, percentage: .02),
    )
        .padding(all: pSh(context: context, percentage: .015))
        .decorated(
            color: kcSecondaryColor.withOpacity(.1),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .013)))
        .gestures(onTap: ontap);
