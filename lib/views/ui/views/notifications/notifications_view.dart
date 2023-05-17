import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBarCustom(context: context, title: 'Notifications', icon: ''),
          verticalSpaceMedium,
          CustomText(
            text: 'Today march 25 2023',
            color: kcTextColor.withOpacity(.3),
            size: pSh(context: context, percentage: .016),
            weight: FontWeight.w600,
          ),
          verticalSpaceMedium,
          ListView.builder(
            itemCount: 4,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Image.asset('assets/images/notifications.png'),
                  horizontalSpaceMedium,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Appointement Alarm',
                        color: kcTextColor,
                        size: pSh(context: context, percentage: .017),
                        weight: FontWeight.w600,
                      ),
                      verticalSpaceSmall,
                      CustomText(
                        text:
                            'Your appointme,t will be start after 15 minutes n stay with app and take care',
                        color: kcTextColor.withOpacity(.3),
                        size: pSh(context: context, percentage: .013),
                        weight: FontWeight.w500,
                      ).width(pSw(context: context, percentage: .52)),
                    ],
                  )
                ],
              )
                  .padding(all: pSh(context: context, percentage: .022))
                  .width(pSw(context: context))
                  .height(pSh(context: context, percentage: .14))
                  .decorated(
                      color: kcBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          spreadRadius: 0,
                          blurRadius: 60,
                          offset:
                              const Offset(0, 10), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .02)))
                  .padding(bottom: pSh(context: context, percentage: .03));
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
