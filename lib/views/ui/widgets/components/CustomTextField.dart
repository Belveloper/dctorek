import 'package:flutter/material.dart';

import '../../shared/colorManager/app_colors.dart';
import '../../shared/responsivityManager/ui_helpers.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    // this.texteditingController,
    this.validator,
    this.onchanged,
    this.onSubmit,
    this.prefix,
    this.suffix,
    // this.suffix,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.backgroundcolor = kcBackgroundColor,
    this.maxLines,
  }) : super(key: key);
  // final TextEditingController? texteditingController;
  final String? hintText;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSubmit;
  final Function(String?)? onchanged;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputAction? textInputAction;

  final TextInputType? keyboardType;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final Color? backgroundcolor;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: texteditingController,
      cursorColor: kcPrimaryColor,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText!,
      maxLines: maxLines ?? null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: pSw(context: context, percentage: .07),
          vertical: pSh(context: context, percentage: .017),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            color: kcTextColor.withOpacity(.3),
            fontSize: pSh(context: context, percentage: .017),
            fontWeight: FontWeight.w500),

        filled: true,
        fillColor: backgroundcolor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            pSh(context: context, percentage: .05),
          ),
          borderSide: const BorderSide(color: Color(0xffDADADA), width: .6),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            pSh(context: context, percentage: .05),
          ),
          borderSide: const BorderSide(color: kcPrimaryColor, width: .6),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            pSh(context: context, percentage: .05),
          ),
          borderSide: BorderSide(color: Color(0xffDADADA), width: .6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            pSh(context: context, percentage: .05),
          ),
          borderSide: BorderSide(color: Colors.red.withOpacity(.7), width: .4),
        ),
        // ignore: prefer_if_null_operators
        prefixIcon: prefix != null
            ? prefix
            : prefixIcon == null
                ? null
                : Icon(
                    prefixIcon,
                    color: kcTextColor.withOpacity(.5),
                    size: pSh(context: context, percentage: .025),
                  ),
        suffixIcon: suffix != null
            ? suffix
            : suffixIcon == null
                ? null
                : Icon(
                    suffixIcon,
                    color: kcTextColor.withOpacity(.5),
                    size: pSh(context: context, percentage: .025),
                  ),
      ),
      validator: validator,
      onChanged: onchanged,
      onFieldSubmitted: onSubmit,
    );
  }
}
