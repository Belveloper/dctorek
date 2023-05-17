import 'package:doctorek/views/ui/dialogs/appointement_confirmation/appointement_confirmation_dialog.dart';
import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class BookAppointement extends StatelessWidget {
  const BookAppointement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarCustom(context: context, icon: '', title: 'Book Appointment'),
            verticalSpaceMedium,
            CustomText(
              text: 'Monday, March 25 2022',
              color: const Color(0xff6B779A),
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .018),
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/sun.png',
                      height: pSh(context: context, percentage: .03),
                      width: pSh(context: context, percentage: .03),
                    ),
                    horizontalSpaceSmall,
                    CustomText(
                      text: 'Mornning',
                      color: kcPrimaryColor,
                      weight: FontWeight.w600,
                      size: pSh(context: context, percentage: .018),
                    ),
                  ],
                )
                    .width(pSw(context: context, percentage: .3))
                    .padding(
                        all: pSh(context: context, percentage: .013),
                        horizontal: pSh(context: context, percentage: .025))
                    .decorated(
                        border: Border.all(color: kcPrimaryColor),
                        color: kcBackgroundColor,
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .04))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/light.png',
                      height: pSh(context: context, percentage: .03),
                      width: pSh(context: context, percentage: .03),
                    ),
                    horizontalSpaceSmall,
                    CustomText(
                      text: 'Evenning',
                      color: kcPrimaryColor,
                      weight: FontWeight.w600,
                      size: pSh(context: context, percentage: .018),
                    ),
                  ],
                )
                    .width(pSw(context: context, percentage: .3))
                    .padding(
                        all: pSh(context: context, percentage: .013),
                        horizontal: pSh(context: context, percentage: .025))
                    .decorated(
                        border: Border.all(color: kcPrimaryColor),
                        color: kcBackgroundColor,
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .04))),
              ],
            ),
            verticalSpaceMedium,
            CustomText(
              text: 'Choose the Hour',
              color: const Color(0xff6B779A),
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .018),
            ),
            verticalSpaceSmall,
            Wrap(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // runAlignment: WrapAlignment.spaceBetween,
              children: [
                for (var time in times)
                  CustomText(
                    text: time,
                    color: kcPrimaryColor,
                    weight: FontWeight.bold,
                    size: pSh(context: context, percentage: .02),
                  )
                      .center()
                      .width(pSw(context: context, percentage: .26))
                      .padding(
                          vertical: pSh(context: context, percentage: .010))
                      .decorated(
                          border: Border.all(color: kcPrimaryColor),
                          color: kcBackgroundColor,
                          borderRadius: BorderRadius.circular(
                              pSh(context: context, percentage: .04)))
                      .padding(
                          right: pSh(context: context, percentage: .01),
                          bottom: pSh(context: context, percentage: .01))
              ],
            ).center(),
            verticalSpaceMedium,
            CustomText(
              text: 'Fee Information',
              color: const Color(0xff6B779A),
              weight: FontWeight.w600,
              size: pSh(context: context, percentage: .018),
            ),
            verticalSpaceSmall,
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, inedx) => Card(
                      elevation: .5,
                      color: kcBackgroundColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kcPrimaryColor.withOpacity(.1)),
                            child: const Image(
                              height: 30,
                              image: AssetImage('assets/images/chat.png'),
                            ).padding(all: 12),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Messaging',
                                weight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'Can messaging with doctor',
                                weight: FontWeight.w400,
                                color: kcTextColor.withOpacity(.5),
                              )
                            ],
                          ),
                          CustomText(
                            text: '5\$',
                            weight: FontWeight.bold,
                            size: 20,
                            color: kcPrimaryColor,
                          ),
                        ],
                      ).padding(all: 20),
                    ).gestures(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) =>
                                appointementConfirmationDialog(context));
                      },
                    ),
                separatorBuilder: (_, index) => verticalSpaceTiny,
                itemCount: 3),
            // ListView.separated(
            //     itemBuilder: (_, index) => const Text('fee info tab ')
            //     //todo implement feeinfotab widget
            //     //FeeInfoTab(),
            //     ,
            //     separatorBuilder: (_, index) => verticalSpaceSmall,
            //     itemCount: 3),
            const Spacer(),
            CustomButton(
              text: 'Next',
              backgroundColor: kcPrimaryColor,
              onTap: () {
                //.goToPatientDetails();
                //todo goto patient details screen
              },
            )
          ],
        ).safeArea().padding(
              all: pSh(context: context, percentage: .025),
            ),
      ),
    );
  }
}
