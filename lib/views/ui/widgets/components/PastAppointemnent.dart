import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomActionButtom.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/HorizontalDoctorWidget.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

import '../../shared/colorManager/app_colors.dart';

class PastAppointemnent extends StatelessWidget {
  PastAppointemnent({
    super.key,
    required this.ontap,
  });
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(
              hintText: 'Search',
              backgroundcolor: Color(0xffF4F6F9),
              suffix: Image.asset(
                'assets/images/search.png',
                color: kcTextColor.withOpacity(.2),
              ).padding(horizontal: pSh(context: context, percentage: .019)),
            ).width(pSw(context: context, percentage: .73)),
            customActionBar(icon: 'assets/images/filter.png', ontap: () {})
          ],
        ).width(pSw(context: context)),
        verticalSpaceMedium,
        CustomText(
          text: 'Today',
          weight: FontWeight.w600,
          color: Color(0xff404345),
        ),
        verticalSpaceMedium,
        ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return HorizontalDoctorWidget(
              isHistory: true,
              actionIcon: 'assets/images/chat.png',
            )
                .padding(bottom: pSh(context: context, percentage: .02))
                .gestures(onTap: ontap);
          },
        ).expanded(),
      ],
    );
  }
}
