import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

class CustomTabSwitcher extends StatelessWidget {
  CustomTabSwitcher({
    super.key,
    required this.title,
    required this.status,
  });
  String? title;
  bool? status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              weight: FontWeight.bold,
            ),
            Switch(
              value: status!,
              onChanged: (e) {},
              activeColor: kcPrimaryColor,
            ),
          ],
        )
      ],
    );
  }
}
