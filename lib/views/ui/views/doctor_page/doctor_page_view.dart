import 'package:doctorek/views/ui/bottom_sheets/doctor_share/doctor_share_sheet.dart';
import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

import '../../widgets/components/CustomActionButtom.dart';
import '../../widgets/components/CustomText.dart';

class DoctorPageView extends StatelessWidget {
  const DoctorPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.arrow_back,
                color: kcPrimaryColor,
              ),
              horizontalSpaceSmall,
              horizontalSpaceSmall,
              CustomText(
                text: 'Dr . seddik walid',
                color: kcTextColor,
                size: pSh(context: context, percentage: .023),
                weight: FontWeight.bold,
              ),
              const Spacer(),
              customActionBar(
                context: context,
                icon: 'assets/images/heart.png',
                ontap: () {},
              ),
              horizontalSpaceSmall,
              customActionBar(
                context: context,
                icon: 'assets/images/share 1.png',
                ontap: () {
                  //showShareBottomSheet();
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => doctorShareSheet(context));
                },
              ),
            ],
          ).padding(all: pSh(context: context, percentage: .0)).center(),
          verticalSpaceMedium,
          ListView(physics: const BouncingScrollPhysics(), children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container()
                        .height(pSh(context: context, percentage: .1))
                        .width(pSh(context: context, percentage: .1))
                        .decorated(
                            color: kcTextColor.withOpacity(.08),
                            shape: BoxShape.circle),
                    verticalSpaceSmall,
                    CustomText(
                      text: 'Dr. seddik walid',
                      size: pSh(context: context, percentage: .02),
                      weight: FontWeight.w600,
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: 'Viralogist',
                      size: pSh(context: context, percentage: .017),
                      weight: FontWeight.w600,
                      color: const Color(0xff6B779A),
                    ),
                  ],
                ).center(),
                verticalSpaceSmall,
                verticalSpaceMedium,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DoctorStats(),
                    DoctorStats(),
                    DoctorStats(),
                  ],
                ),
                verticalSpaceMedium,
                verticalSpaceSmall,
                CustomText(
                  text: 'About Doctor',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceSmall,
                CustomText(
                  text:
                      'Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital at London. He has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation. ',
                  maxLines: 5,
                  size: pSh(context: context, percentage: .016),
                  weight: FontWeight.w500,
                  color: const Color(0xff6B779A),
                ).width(pSw(context: context, percentage: .8)),
                verticalSpaceSmall,
                verticalSpaceMedium,
                CustomText(
                  text: 'Working time',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceSmall,
                CustomText(
                  text: 'Mon - Sat (08:30 AM - 09:00 PM)',
                  size: pSh(context: context, percentage: .016),
                  weight: FontWeight.w600,
                  color: const Color(0xff6B779A),
                ),
                verticalSpaceMedium,
                CustomText(
                  text: 'Make Appointment',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceMedium,
                ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: '13',
                          size: pSh(context: context, percentage: .02),
                          weight: FontWeight.w600,
                          color: 1 == index
                              ? kcBackgroundColor
                              : const Color(0xff6B779A),
                        ),
                        verticalSpaceSmall,
                        CustomText(
                          text: 'Mon',
                          size: pSh(context: context, percentage: .02),
                          weight: FontWeight.w600,
                          color: 1 == index
                              ? kcBackgroundColor
                              : const Color(0xff6B779A),
                        ),
                      ],
                    )
                        .width(pSw(context: context, percentage: .21))
                        .decorated(
                            color:
                                1 == index ? kcPrimaryColor : kcBackgroundColor,
                            border: Border.all(
                              color: 1 == index
                                  ? Colors.transparent
                                  : const Color(0xff6B779A).withOpacity(.2),
                            ),
                            borderRadius: BorderRadius.circular(
                                pSh(context: context, percentage: .008)))
                        .padding(right: pSh(context: context, percentage: .019))
                        .gestures(onTap: () {});
                  },
                ).height(pSh(context: context, percentage: .14)),
              ],
            ),
          ]).expanded(),
          verticalSpaceMedium,
          CustomButton(
            text: 'Book Appointment',
            backgroundColor:
                true ? kcPrimaryColor : kcPrimaryColor.withOpacity(.3),
            onTap: () {
              Navigator.pushNamed(context, Routes.appointementBooking);
            },
          )
        ],
      )
          .safeArea()
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .025)),
    );
  }
}

class DoctorStats extends StatelessWidget {
  const DoctorStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/people.png',
              height: pSh(context: context, percentage: .025),
              width: pSh(context: context, percentage: .025),
            ),
          ],
        )
            .padding(vertical: pSh(context: context, percentage: .01))
            .height(pSh(context: context, percentage: .07))
            .width(pSw(context: context, percentage: .12))
            .decorated(
                color: const Color(0xff7ACEFA).withOpacity(.15),
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(pSh(context: context, percentage: .01)),
                  bottomRight:
                      Radius.circular(pSh(context: context, percentage: .01)),
                )),
        const Spacer(),
        CustomText(
          text: '1000+',
          size: pSh(context: context, percentage: .018),
          weight: FontWeight.w600,
          color: kcTextColor,
        ),
        verticalSpaceTiny,
        CustomText(
          text: 'Patients',
          size: pSh(context: context, percentage: .015),
          weight: FontWeight.w500,
          color: const Color(0xff6B779A),
        ),
        verticalSpaceTiny,
        verticalSpaceTiny,
      ],
    )
        .height(pSh(context: context, percentage: .15))
        .width(pSw(context: context, percentage: .25))
        .decorated(
            color: kcBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff6B779A).withOpacity(0.05),
                spreadRadius: 0,
                blurRadius: 25,
                offset: const Offset(0, 10), // changes position of shadow
              ),
            ],
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .008)));
  }
}
