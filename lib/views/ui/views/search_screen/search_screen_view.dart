import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/HorizontalDoctorWidget.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class SearchScreenView extends StatelessWidget {
  const SearchScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(
              Icons.arrow_back,
              color: kcPrimaryColor,
            ).gestures(onTap: () {
              Navigator.pop(context);
            }),
            const Spacer(),
            CustomTextField(
              hintText: 'search',
              backgroundcolor: const Color(0xffF4F6F9),
              suffix: Image.asset(
                'assets/images/search.png',
                color: kcTextColor.withOpacity(.2),
              ).padding(horizontal: pSh(context: context, percentage: .019)),
            ).width(pSw(context: context, percentage: .75))
          ],
        ).width(pSw(context: context)),
        verticalSpaceMedium,
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specialitiesNames.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomText(
              text: specialitiesNames[index],
              color: false ? kcBackgroundColor : kcPrimaryColor,
            )
                .padding(
                    vertical: pSh(context: context, percentage: .015),
                    horizontal: pSh(context: context, percentage: .03))
                .decorated(
                    color: false ? kcPrimaryColor : kcBackgroundColor,
                    border: Border.all(
                      color: false ? kcBackgroundColor : kcPrimaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                        pSh(context: context, percentage: .03)))
                .center()
                .padding(right: pSh(context: context, percentage: .02))
                .gestures(onTap: () {
              //updateSelectedIndex(index);
            });
          },
        ).height(pSh(context: context, percentage: .08)),
        verticalSpaceMedium,
        ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return HorizontalDoctorWidget()
                .padding(bottom: pSh(context: context, percentage: .02));
          },
        ).expanded(),
      ]).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
