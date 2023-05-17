import 'package:doctorek/views/ui/shared/colorManager/app_colors.dart';
import 'package:doctorek/views/ui/shared/responsivityManager/ui_helpers.dart';
import 'package:doctorek/views/ui/views/principal/main_cubit.dart';
import 'package:doctorek/views/ui/widgets/components/BottomNavBarButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kcBackgroundColor,
            body: //getSelectedScreen(1),
                MainCubit.get(context)
                    .getSelectedScreen(MainCubit.get(context).index),
            bottomNavigationBar: BottomAppBar(
              elevation: 1.0,
              color: kcBackgroundColor,
              child: SizedBox(
                // color: kcPrimaryColor,
                height: pSh(context: context, percentage: 0.10),
                width: pSw(context: context),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomNavBarButton(
                        isSelected:
                            MainCubit.get(context).index == 0 ? true : false,
                        text: 'Home',
                        icon: 'assets/icons/home.svg',
                        onTap: () {
                          //changeSelectedIndex(0);
                          MainCubit.get(context).changeSelectedIndex(0);
                        },
                      ),
                      horizontalSpaceMedium,
                      BottomNavBarButton(
                        isSelected:
                            MainCubit.get(context).index == 1 ? true : false,
                        text: 'Schedule',
                        icon: 'assets/icons/agenda.svg',
                        onTap: () {
                          // changeSelectedIndex(1);
                          MainCubit.get(context).changeSelectedIndex(1);
                        },
                      ),
                      horizontalSpaceMedium,
                      BottomNavBarButton(
                        isSelected:
                            MainCubit.get(context).index == 2 ? true : false,
                        text: 'History',
                        icon: 'assets/icons/history.svg',
                        onTap: () {
                          //changeSelectedIndex(2);
                          MainCubit.get(context).changeSelectedIndex(2);
                        },
                      ),
                      horizontalSpaceMedium,
                      BottomNavBarButton(
                        isSelected:
                            MainCubit.get(context).index == 3 ? true : false,
                        text: 'Profile',
                        icon: 'assets/icons/profile.svg',
                        onTap: () {
                          //changeSelectedIndex(3);
                          MainCubit.get(context).changeSelectedIndex(3);
                        },
                      ),
                    ],
                  ).padding(horizontal: pSh(context: context, percentage: .03)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
