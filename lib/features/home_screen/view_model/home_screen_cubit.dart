import 'package:accounting/features/home_screen/data/step_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  static HomeScreenCubit get(context) => BlocProvider.of(context);

  HomeScreenCubit() : super(HomeScreenInitial());

  bool openSide=true;


  void changeOpenSide(){
    openSide= !openSide;
    emit(changeOpenSideState());
  }




}
