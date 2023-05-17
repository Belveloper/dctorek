import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';

Widget appointementConfirmationDialog(BuildContext context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group 1370.png',
              height: pSh(context: context, percentage: .2),
            ),
            CustomText(
              text: 'Well Done',
              color: kcPrimaryColor,
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .028),
            ),
            verticalSpaceSmall,
            CustomText(
              maxLines: 5,
              text:
                  'You appointment booking successfully completed . Dr.seddik walid will Message you soon',
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium,
            CustomButton(
              text: 'Back to home',
              isGradient: true,
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.home);
              },
            ),
          ],
        ),
      ),
    );
