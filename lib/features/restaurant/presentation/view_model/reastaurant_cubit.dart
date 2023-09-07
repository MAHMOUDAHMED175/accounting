

import 'package:accounting/features/restaurant/presentation/view/screens/add_one.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/kitchen.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/menu.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/printer_settings.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/reservation.dart';
import 'package:accounting/features/restaurant/presentation/view/screens/tables.dart';
import 'package:accounting/features/restaurant/presentation/view/widgets/restaurant_grid_view_widgets/restaurant_grid_view_widgets.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantCubit extends Cubit<RestaurantState> {
  RestaurantCubit() : super(RestaurantInitial());
  
  static RestaurantCubit get(context)=>BlocProvider.of(context);
  


  bool gridViewViewer=false;

  void changeGridViewViewer(){
    gridViewViewer=!gridViewViewer;
    emit(changeGridViewViewerState());
  }

  int restaurantCuttentIndex=1;
  
  
  List<Widget> restaurantScreen=[
    RestaurantGridViewWidget(),
    RestaurantMenu(),
    RestaurantAddOne(),
    RestaurantReservation(),
    RestaurantKitchen(),
    RestaurantTables(),
    RestaurantPrinterSettings(),
  ];
  
  void restaurantChangeIndex(int index){
    restaurantCuttentIndex=index;
    emit(restaurantChangeIndexState());
  }
}
