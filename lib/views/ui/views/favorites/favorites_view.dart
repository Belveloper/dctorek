import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTextField.dart';
import 'package:doctorek/views/ui/widgets/components/DoctorWidget.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(
              context: context,
              title: 'Favorite Doctor',
              icon: 'assets/images/filter.png',
              ontap: () {}),
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
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 24),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const DoctorWidget().gestures(onTap: () {
                // viewModel.showdeleteFavDoctorBottomSheet();
              });
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
