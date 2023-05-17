import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/HorizontalDoctorWidget.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class TopRatedDocsView extends StatelessWidget {
  const TopRatedDocsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(children: [
        appBarCustom(
          context: context,
          title: 'Top Doctors',
          icon: 'assets/images/filter.png',
        ),
        verticalSpaceMedium,
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specialitiesNames.length,
          physics: const BouncingScrollPhysics(),
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
