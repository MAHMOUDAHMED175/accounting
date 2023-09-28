import 'package:accounting/features/home_screen/presentation/view/screens/content_screens.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit, HomeScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: ContentGridViewScreens(
            child: HomeScreenCubit.get(context)
                .screen[HomeScreenCubit.get(context).currentIndex],
          ),
        );
      },
    );
  }
}
