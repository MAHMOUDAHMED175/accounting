import 'package:accounting/features/accounting/view/screens/accounts_guide.dart';
import 'package:accounting/features/accounting/view/screens/daily_restrictions.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/control_board.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/invoice_management_widgets.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/late_pay_invoice.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/losing.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/categorey_charts/new_invoice.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/losing_widgets/colume_chart_losing_cash.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/charts_widget/content_charts/losing_widgets/colume_chart_losing_expected.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/restaurant.dart';
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

  int currentIndex = 2;

  List<Widget> screen = [
    //لوحة التحكم
    const ControlBoardScreen(),
    //الحسابات
    const DailyRestrictionsScreen(),
    const AccountsGuide(),

    //المطاعم
    Restaurant(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(changeIndexSideMenuState());
  }

  int chartHomeScreenCurrentIndex = 0;

  List<Widget> chartHomeScreenScreens = [
    const InvoiceManagement(),
    LosingMoney(),
    const NewInvoice(),
    const LatePayInvoice(),
  ];

  void chartHomeScreenChangeIndex(int index) {
    chartHomeScreenCurrentIndex = index;
    emit(chartHomeScreenChangeIndexSideMenuState());
  }

  int losingCurrentIndex = 0;

  List<Widget> losingScreens = [
    const ColumChartLosingCash(),
    const ColumChartLosingExpected(),
    // const FavoritesScreen(),
  ];

  void losingChangeIndex(int index) {
    losingCurrentIndex = index;
    emit(losingChangeIndexState());
  }

  bool light = true;

  void lightChange() {
    light = !light;
    emit(lightChangeState());
  }
}
