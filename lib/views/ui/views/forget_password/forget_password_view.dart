import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/views/forget_password/forgot_password_cubit.dart';
import 'package:doctorek/views/ui/widgets/components/CustomButton.dart';
import 'package:doctorek/views/ui/widgets/components/EnterNewPassword.dart';
import 'package:doctorek/views/ui/widgets/components/OtpField.dart';
import 'package:doctorek/views/ui/widgets/components/SelectretrievingPasswordMethode.dart';
import 'package:doctorek/views/ui/widgets/components/custom_app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kcBackgroundColor,
            body: Column(
              children: [
                appBarCustom(
                  icon: 'assets/images/more vert.png',
                  context: context,
                  title: 'Forgot Password',
                ),
                verticalSpaceSmall,
                verticalSpaceTiny,
                verticalSpaceSmall,
                PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: ForgotPasswordCubit.get(context)
                      .controller, //todo implement page controller
                  children: [
                    SelectretrievingPasswordMethode(
                      index: // methodeSelected,
                          ForgotPasswordCubit.get(context).selectedPssMethod,
                      onEmailTap: () {
                        ForgotPasswordCubit.get(context)
                            .selectedPasswordRetreiveMethod(1);
                      },
                      onSmsTap: () {
                        //updateMethodeSelected(0);
                        ForgotPasswordCubit.get(context)
                            .selectedPasswordRetreiveMethod(0);
                      },
                    ),
                    const OtpField(),
                    const EnterNewPassword(),
                  ],
                ).expanded(),
                CustomButton(
                  text: 'Continue',
                  isGradient: true,
                  onTap: () {
                    //nextPage();
                    ForgotPasswordCubit.get(context).goNext();
                  },
                ),
                verticalSpaceMedium,
              ],
            )
                .safeArea()
                .height(pSh(context: context))
                .width(pSw(context: context))
                .padding(all: pSh(context: context, percentage: .019)),
          );
        },
      ),
    );
  }
}
