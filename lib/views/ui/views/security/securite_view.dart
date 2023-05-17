import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomTabSwitcher.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          appBarCustom(context: context, icon: '', title: 'Security'),
          verticalSpaceMedium,
          CustomTabSwitcher(
            title: 'FAce ID',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'Remember me',
            status: false,
          ),
          CustomTabSwitcher(
            title: 'Touch ID',
            status: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }
}
