import 'package:doctorek/views/ui/bottom_sheets/disconnect/disconnect_sheet.dart';
import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomActionButtom.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:doctorek/views/ui/widgets/components/ProfileTab.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
                  icon: 'assets/images/Frame (2).png',
                  ontap: () {},
                ),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Stack(
                  children: [
                    Container()
                        .height(pSh(context: context, percentage: .1))
                        .width(pSh(context: context, percentage: .1))
                        .decorated(
                            color: kcTextColor.withOpacity(.2),
                            shape: BoxShape.circle),
                    Container(
                      child: Image.asset(
                        'assets/images/Frame (2).png',
                        color: kcBackgroundColor,
                      ).padding(all: pSh(context: context, percentage: .005)),
                    )
                        .height(pSh(context: context, percentage: .025))
                        .width(pSh(context: context, percentage: .025))
                        .decorated(
                            color: kcPrimaryColor,
                            border: Border.all(color: kcBackgroundColor),
                            borderRadius: BorderRadius.circular(
                                pSh(context: context, percentage: .005)))
                        .positioned(bottom: 3, right: 3),
                  ],
                ),
                horizontalSpaceMedium,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Wido Studio',
                      weight: FontWeight.bold,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: 'widostudio@gmail.com',
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceMedium,
            ProfileTab(
              color: kcPrimaryColor,
              icon: 'assets/images/bell.png',
              text: 'Notifications',
              ontap: () {
                Navigator.pushNamed(context, Routes.notifications);
              },
            ),
            ProfileTab(
              color: kcPrimaryColor,
              icon: 'assets/images/security.png',
              text: 'Security',
              ontap: () {
                //goToSecurite();
                Navigator.pushNamed(context, Routes.security);
              },
            ),
            ProfileTab(
              color: kcPrimaryColor,
              icon: 'assets/images/Frame (3).png',
              text: 'Appearance',
              ontap: () {
                //goToAppearence();
                Navigator.pushNamed(context, Routes.appearance);
              },
            ),
            ProfileTab(
              color: kcPrimaryColor,
              icon: 'assets/images/help.png',
              text: 'Help',
              ontap: () {
                //goToHelp();
                Navigator.pushNamed(context, Routes.help);
              },
            ),
            ProfileTab(
              color: kcPrimaryColor,
              icon: 'assets/images/peoples.png',
              text: 'invite Freinds',
              ontap: () {
                //goToInviteFreinds();
                Navigator.pushNamed(context, Routes.invite);
              },
            ),
            ProfileTab(
              color: Colors.red,
              icon: 'assets/images/logout.png',
              text: 'Log Out',
              ontap: () {
                //showDisconnectBottomSheet();
                showModalBottomSheet(
                    context: context,
                    builder: (context) => disconnectSheet(context));
              },
            ),
          ],
        ).safeArea().padding(all: pSh(context: context, percentage: .025)),
      ),
    );
  }
}
