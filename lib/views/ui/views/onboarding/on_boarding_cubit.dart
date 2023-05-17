import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  static OnBoardingCubit get(context) => BlocProvider.of(context);

  PageController controller = PageController();
  int currentIndex = 0;

  void goNext() {
    controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);

    emit(OnBoardingGoNext());
  }

  void currentIndexSelection(int index) {
    currentIndex = index;

    emit(OnBoardingIndexSelection());
  }
}
