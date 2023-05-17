import 'package:flutter/material.dart';

import '../../shared/colorManager/app_colors.dart';
import '../../shared/responsivityManager/ui_helpers.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.weight,
    this.undeliuned,
    this.textAlign,
    this.maxLines = 1,
  }) : super(key: key);
  String? text;
  Color? color;
  double? size;
  FontWeight? weight;
  bool? undeliuned;
  TextAlign? textAlign;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign ?? textAlign,
      maxLines: maxLines ?? null,
      overflow: TextOverflow.fade,
      style: TextStyle(
        color: color ?? kcTextColor,
        fontSize: size ?? pSh(context: context, percentage: .018),
        fontWeight: weight ?? FontWeight.w500,
        decoration: undeliuned == true ? TextDecoration.underline : null,
      ),
    );
  }
}
