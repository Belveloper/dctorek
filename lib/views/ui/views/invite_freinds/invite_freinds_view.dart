import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:styled_widget/styled_widget.dart';

class InvitationView extends StatelessWidget {
  const InvitationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(context: context, icon: '', title: 'invite Friends'),
          verticalSpaceMedium,
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InviteFreindWidget(
                context: context,
                isInvited: index % 2 == 0 ? false : true,
              ).padding(bottom: pSh(context: context, percentage: .019));
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  Widget InviteFreindWidget({BuildContext? context, bool? isInvited}) => Row(
        children: [
          Image.asset(
            'assets/images/Image.png',
            height: pSh(context: context!, percentage: .1),
            width: pSw(context: context, percentage: .2),
            fit: BoxFit.cover,
          )
              .clipRRect(
                topLeft: pSh(context: context, percentage: .02),
                bottomLeft: pSh(context: context, percentage: .02),
              )
              .decorated(
                  color: kcPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(pSh(context: context, percentage: .02)),
                    bottomLeft:
                        Radius.circular(pSh(context: context, percentage: .02)),
                  )),
          horizontalSpaceMedium,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Dr. Eleanor Pena',
                weight: FontWeight.bold,
              ),
              verticalSpaceTiny,
              CustomText(
                text: '+213 5648-756-458',
                size: pSh(context: context, percentage: .016),
              ),
            ],
          ),
          const Spacer(),
          CustomText(
            text: isInvited == true ? 'Invited' : 'Invite',
            color: isInvited == true ? kcBackgroundColor : kcPrimaryColor,
          )
              .padding(
                  horizontal: pSh(context: context, percentage: .025),
                  vertical: pSh(context: context, percentage: .011))
              .decorated(
                  color: isInvited == true ? kcPrimaryColor : kcBackgroundColor,
                  border: Border.all(color: kcPrimaryColor),
                  borderRadius: BorderRadius.circular(
                      pSh(context: context, percentage: .04))),
          horizontalSpaceSmall,
        ],
      )
          .width(
            pSw(context: context),
          )
          .height(pSh(context: context, percentage: .1))
          .decorated(
              // color: kcTextColor,
              border: Border.all(color: kcTextColor.withOpacity(.1)),
              borderRadius: BorderRadius.circular(
                  pSh(context: context, percentage: .02)));
}
