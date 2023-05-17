import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTabSwitcher.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ApperanceView extends StatelessWidget {
  const ApperanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(context: context, title: 'Apperance', icon: ''),
          verticalSpaceMedium,
          CustomTabSwitcher(
            title: 'Notification',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'Vibrate',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'New tips available',
            status: false,
          ),
          CustomTabSwitcher(
            title: 'New service Availble',
            status: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
