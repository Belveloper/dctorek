import 'package:bloc/bloc.dart';
import 'package:doctorek/views/ui/views/appointement/appointement_view.dart';
import 'package:doctorek/views/ui/views/history/history_view.dart';
import 'package:doctorek/views/ui/views/home/home_view.dart';
import 'package:doctorek/views/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  static MainCubit get(context) => BlocProvider.of(context);
  MainCubit() : super(MainInitial());

  int _index = 0;
  int get index => _index;

  changeSelectedIndex(newIndex) {
    _index = newIndex;
    emit(ChangeSelectedIndex());
  }

  Widget getSelectedScreen(int index) {
    Widget selectedScreen = HomeView();
    switch (index) {
      case 0:
        selectedScreen = HomeView();
        break;
      case 1:
        selectedScreen = AppointementView();
        break;
      case 2:
        selectedScreen = HistoryView();
        break;
      case 3:
        selectedScreen = ProfileView();
        break;

      default:
        selectedScreen = HomeView();
        break;
    }
    return selectedScreen;
  }
}
