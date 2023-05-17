import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/SpecialityWidget.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class SpecialitiesView extends StatelessWidget {
  const SpecialitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(
            context: context,
            title: 'Specialist Doctor',
            icon: 'assets/images/filter.png',
          ),
          verticalSpaceMedium,
          CustomTextField(
            hintText: 'Search',
            backgroundcolor: const Color(0xffF4F6F9),
            suffix: Image.asset(
              'assets/images/search.png',
              color: kcTextColor.withOpacity(.2),
            ).padding(horizontal: pSh(context: context, percentage: .019)),
          ),
          verticalSpaceMedium,
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: pSh(context: context, percentage: .02),
              mainAxisSpacing: pSh(context: context, percentage: .02),
            ),
            itemCount: specialities.length,
            itemBuilder: (BuildContext context, int index) {
              return SpecialityWidget(speciality: specialities[index]);
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
