import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomActionButtom.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/HorizontalDoctorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:styled_widget/styled_widget.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/ItexcLogo.png',
                color: kcPrimaryColor,
                height: pSh(context: context, percentage: .04),
              ),
              horizontalSpaceSmall,
              CustomText(
                text: 'My History',
                color: kcTextColor,
                size: pSh(context: context, percentage: .028),
                weight: FontWeight.bold,
              ),
              const Spacer(),
            ],
          ),
          verticalSpaceMedium,
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: historyFilter.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomText(
                text: historyFilter[index],
                color: kcPrimaryColor,
              )
                  .center()
                  .padding(horizontal: pSw(context: context, percentage: .05))
                  .decorated(
                      border: Border.all(color: kcPrimaryColor),
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .03)))
                  .padding(right: pSh(context: context, percentage: .01));
            },
          ).height(pSh(context: context, percentage: .045)),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(
                hintText: 'Search',
                backgroundcolor: const Color(0xffF4F6F9),
                suffix: Image.asset(
                  'assets/images/search.png',
                  color: kcTextColor.withOpacity(.2),
                ).padding(horizontal: pSh(context: context, percentage: .019)),
              ).width(pSw(context: context, percentage: .75)),
              customActionBar(
                  context: context,
                  icon: 'assets/images/filter.png',
                  ontap: () {})
            ],
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Today',
            weight: FontWeight.w600,
            color: const Color(0xff404345),
          ),
          verticalSpaceMedium,
          ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return HorizontalDoctorWidget(
                isHistory: true,
                actionIcon: 'assets/images/Frame (1).png',
              )
                  .padding(bottom: pSh(context: context, percentage: .02))
                  .gestures(onTap: () {
                // viewModel.goToAppointementDetails();
              });
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
