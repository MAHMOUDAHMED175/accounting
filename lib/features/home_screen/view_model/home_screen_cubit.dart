import 'package:accounting/features/accounting/view/screens/daily_restrictions.dart';
import 'package:accounting/features/home_screen/view/screens/control_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  static HomeScreenCubit get(context) => BlocProvider.of(context);

  HomeScreenCubit() : super(HomeScreenInitial());

  bool openSide = true;

  void changeOpenSide() {
    openSide = !openSide;
    emit(changeOpenSideState());
  }

  int currentIndex = 0;

  List<Widget> screen = [
    const ControlBoardScreen(),
    const DailyRestrictionsScreen(),
    // const FavoritesScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(changeIndexSideMenuState());
  }
}
