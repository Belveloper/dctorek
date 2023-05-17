import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:flutter/material.dart';

import '../../shared/colorManager/app_colors.dart';

class EnterNewPassword extends StatelessWidget {
  const EnterNewPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpaceSmall,
        CustomText(
          text: 'Create new password',
          size: pSh(context: context, percentage: .02),
          weight: FontWeight.w600,
        ),
        verticalSpaceMedium,
        verticalSpaceMedium,

        CustomText(
          text: 'New password',
          color: kcTextColor,
          weight: FontWeight.w500,
          size: pSh(context: context, percentage: .017),
        ),
        verticalSpaceSmall,
        // verticalSpaceSmall,
        CustomTextField(
          hintText: 'new password',
          // obscureText: true,
          suffixIcon: Icons.remove_red_eye,
        ),
        verticalSpaceMedium,
        CustomText(
          text: 'Confirm new password',
          color: kcTextColor,
          weight: FontWeight.w500,
          size: pSh(context: context, percentage: .017),
        ),
        verticalSpaceSmall,
        // verticalSpaceSmall,
        CustomTextField(
            hintText: 'confirm new password',
            // obscureText: true,
            suffixIcon: Icons.remove_red_eye),
      ],
    );
  }
}
