import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../shared/colorManager/app_colors.dart';
import '../../shared/responsivityManager/ui_helpers.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.text,
    this.textColor = kcBackgroundColor,
    this.backgroundColor = kcPrimaryColor,
    this.hasBorder = false,
    this.onTap,
    this.isLoading = false,
    this.isGradient = false,
    this.width = 0,
  }) : super(key: key);
  String? text;
  Color? textColor;
  Color? backgroundColor;
  bool? hasBorder;
  bool? isLoading;
  bool? isGradient;
  double? width;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLoading == true
          ? CircularProgressIndicator(
              color: kcBackgroundColor,
            ).center()
          : CustomText(
              text: text,
              color: textColor,
            ).center(),
    )
        .width(width == 0
            ? pSw(context: context)
            : pSw(context: context, percentage: width!))
        .height(pSh(context: context, percentage: .065))
        .decorated(
            color: isGradient == false ? backgroundColor : null,
            gradient: isGradient == true
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [kcPrimaryColor, kcSecondaryColor])
                : null,
            border: Border.all(
                color: hasBorder == true ? textColor! : Colors.transparent),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .039)))
        .gestures(onTap: onTap);
  }
}
