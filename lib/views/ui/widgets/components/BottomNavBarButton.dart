import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:styled_widget/styled_widget.dart';

class BottomNavBarButton extends StatelessWidget {
  BottomNavBarButton({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  bool? isSelected;
  String? text;
  String? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon!,
            height: pSh(context: context, percentage: .023),
            color: kcPrimaryColor),
        // horizontalSpaceSmall,
        isSelected == true ? horizontalSpaceSmall : Container(),
        isSelected == true
            ? CustomText(
                text: text,
                color: kcPrimaryColor,
                weight: FontWeight.bold,
              ).opacity(isSelected == true ? 1 : 0, animate: true).animate(
                const Duration(milliseconds: 800),
                Curves.fastLinearToSlowEaseIn)
            : Container(),
        isSelected == true ? horizontalSpaceSmall : Container(),
      ],
    )
        .padding(horizontal: pSh(context: context, percentage: .015))
        .height(pSh(context: context, percentage: .05))
        .decorated(
          color: kcSecondaryColor.withOpacity(.10),
          borderRadius:
              BorderRadius.circular(pSh(context: context, percentage: .015)),
        )
        .gestures(onTap: onTap)
        .animate(
            const Duration(milliseconds: 800), Curves.fastLinearToSlowEaseIn);
  }
}
