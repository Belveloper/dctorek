import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

import '../../widgets/components/CustomActionButtom.dart';
import '../../widgets/components/DoctorWidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
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
                  text: 'Doctorek',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .028),
                  weight: FontWeight.bold,
                ),
                const Spacer(),
                customActionBar(
                  context: context,
                  icon: 'assets/images/bell.png',
                  ontap: () {
                    Navigator.pushNamed(context, Routes.notifications);
                  },
                ),
                horizontalSpaceSmall,
                customActionBar(
                  context: context,
                  icon: 'assets/images/heart.png',
                  ontap: () {
                    //goToFavDoctors();
                    Navigator.pushNamed(context, Routes.favDoctors);
                  },
                ),
              ],
            ).padding(all: pSh(context: context, percentage: .0)),
            // verticalSpaceMedium,
            verticalSpaceMedium,
            Row(
              children: [
                CustomText(
                  text: 'Find',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .032),
                ),
                horizontalSpaceTiny,
                CustomText(
                  text: 'your doctor',
                  color: kcTextColor.withOpacity(.5),
                  size: pSh(context: context, percentage: .032),
                ),
              ],
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Search'),
                Image.asset(
                  'assets/images/search.png',
                  height: pSh(context: context, percentage: .025),
                  width: pSh(context: context, percentage: .025),
                )
              ],
            )
                .width(pSw(context: context))
                .height(pSh(context: context, percentage: .03))
                .padding(
                  vertical: pSh(context: context, percentage: .014),
                  horizontal: pSh(context: context, percentage: .02),
                )
                .decorated(
                    color: kcTextColor.withOpacity(.06),
                    borderRadius: BorderRadius.circular(
                        pSh(context: context, percentage: .03)))
                .gestures(onTap: () {
              Navigator.pushNamed(context, Routes.search);
            }),
            verticalSpaceMedium,
            // verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Special Doctor',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .018),
                  weight: FontWeight.w500,
                ).gestures(onTap: () {
                  Navigator.pushNamed(context, Routes.specialDocs);
                }),
              ],
            ),
            verticalSpaceSmall,
            verticalSpaceSmall,
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                for (var item in specialDoctorButonData)
                  SpecialDoctorHomeButon(
                    color: item['color'],
                    icon: item['icon'],
                    text: item['title'],
                  )
                      .width(pSw(context: context, percentage: .2))
                      .padding(bottom: pSh(context: context, percentage: .015)),
              ],
            )
                .padding(horizontal: pSh(context: context, percentage: .01))
                .width(pSw(context: context)),

            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Top Doctors',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .017),
                  weight: FontWeight.w500,
                ).gestures(onTap: () {
                  Navigator.pushNamed(context, Routes.topRatedDocs);
                }),
              ],
            ),
            verticalSpaceSmall,
            verticalSpaceSmall,
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const DoctorWidget()
                    .padding(right: pSh(context: context, percentage: .019))
                    .gestures(onTap: () {
                  Navigator.pushNamed(context, Routes.doctorDetails);
                });
              },
            ).height(pSh(context: context, percentage: .21)),
          ],
        ).safeArea().padding(all: pSh(context: context, percentage: .025)),
      ),
    );
  }
}

class SpecialDoctorHomeButon extends StatelessWidget {
  SpecialDoctorHomeButon({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  String? text;
  String? icon;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              icon!,
              color: kcBackgroundColor,
              height: pSh(context: context, percentage: .03),
              width: pSh(context: context, percentage: .03),
            ).padding(all: pSh(context: context, percentage: .019)).decorated(
                color: color,
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .01))),
            Container()
                .height(pSh(context: context, percentage: .032))
                .width(pSh(context: context, percentage: .032))
                .decorated(
                    color: kcBackgroundColor.withOpacity(.2),
                    shape: BoxShape.circle)
                .positioned(top: -7, left: -6)
          ],
        ),
        verticalSpaceTiny,
        CustomText(
          text: text,
          size: pSh(context: context, percentage: .015),
          weight: FontWeight.bold,
        )
      ],
    );
  }
}
