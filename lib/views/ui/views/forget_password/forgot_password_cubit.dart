import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  PageController controller = PageController();

  int selectedPssMethod = 0;

  void selectedPasswordRetreiveMethod(int index) {
    selectedPssMethod = index;
    emit(SelectedPassMethodToggle());
  }

  void goNext() {
    controller.nextPage(
        duration: const Duration(microseconds: 500), curve: Curves.linear);
    emit(GoNextPageViewPage());
  }
}
