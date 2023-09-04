import 'package:accounting/features/accounting/view/screens/daily_restrictions.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/control_board.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/invoice_management_widgets.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/late_pay_invoice.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/losing.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/new_invoice.dart';
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



  int chartHomeScreenCurrentIndex = 0;

  List<Widget> chartHomeScreenScreens = [
     InvoiceManagement(),
     LosingMoney(),
    const NewInvoice(),
    const LatePayInvoice(),
    // const FavoritesScreen(),
  ];

  void chartHomeScreenChangeIndex(int index) {
    chartHomeScreenCurrentIndex = index;
    emit(chartHomeScreenChangeIndexSideMenuState());
  }
}
