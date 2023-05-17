import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:styled_widget/styled_widget.dart';

Widget disconnectSheet(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logout.png',
            fit: BoxFit.cover,
            height: pSh(context: context, percentage: .05),
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Are you sure want to logout',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'cancel',
                width: .43,
                hasBorder: true,
                backgroundColor: kcBackgroundColor,
                textColor: kcPrimaryColor,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                text: 'Yes, Logout',
                width: .43,
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.landing);
                },
              ),
            ],
          ).width(pSw(context: context))
        ],
      ),
    );
