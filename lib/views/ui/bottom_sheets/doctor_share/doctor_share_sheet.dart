import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/models/data/app_data.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/widgets/components/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

Widget doctorShareSheet(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(pSh(context: context, percentage: .019)),
          topRight: Radius.circular(pSh(context: context, percentage: .019)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'Share',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Wrap(
            children: [
              for (var item in socialMedia)
                Column(
                  children: [
                    Image.asset(
                      item['logo'],
                      color: kcPrimaryColor,
                      height: pSh(context: context, percentage: .04),
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: item['name'],
                      weight: FontWeight.w600,
                    ),
                  ],
                )
                    .width(pSw(context: context, percentage: .2))
                    .padding(bottom: pSh(context: context, percentage: .05)),
            ],
          )
        ],
      ),
    );
