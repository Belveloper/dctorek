import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/PastAppointemnent.dart';
import 'package:doctorek/views/ui/widgets/components/UpcomingAppointemnent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:styled_widget/styled_widget.dart';

class AppointementView extends StatelessWidget {
  const AppointementView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
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
              Spacer(),
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // horizontalSpaceSmall,
                  CustomText(
                    text: 'Upcoming',
                    //todo implement appointement view index controller
                    color: 0 == 0
                        ? kcBackgroundColor
                        : kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .32))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(
                           //todo implement appointement view index controller
                        color: 0 == 0
                            ? kcBackgroundColor
                            : kcPrimaryColor,
                      ),
                         //todo implement appointement view index controller
                      color: 0 == 0
                          ? kcPrimaryColor
                          : kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04)))
                  .gestures(onTap: () {
                 //todo implement appointement view index controller 
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // horizontalSpaceSmall,
                  CustomText(
                    text: 'Past',
                    color:   //todo implement appointement view index controller
                    // viewModel.selectedIndex == 1
                    1==1
                        ? kcBackgroundColor
                        : kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .32))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(
                          //todo implement appointement view index controller
                       // color: viewModel.selectedIndex == 1
                       color: 0==1
                            ? kcBackgroundColor
                            : kcPrimaryColor,
                      ),
                      color: //viewModel.selectedIndex == 1
                      1==0
                          ? kcPrimaryColor
                          : kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04)))
                  .gestures(onTap: () {
              //  viewModel.updateSelectedIndes(1);
                 //todo implement appointement view index controller
              }),
            ],
          ),
          verticalSpaceMedium,
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller:// viewModel.controller,
               //todo implement appointement view  controller
               PageController(),
            children: [
              UpcomingAppointemnent(),
              PastAppointemnent(ontap: () {
               // viewModel.goToAppointementDetails();
                  //todo implement appointement view index controller
              }),
            ],
          ).expanded()
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}