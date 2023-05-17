import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/ProfileTab.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(context: context, icon: '', title: 'Help'),
          verticalSpaceMedium,
          ProfileTab(
            ontap: () {},
            text: 'FAQ',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Contact us',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Term & Condition',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Privacy Policy',
            iconVisible: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
