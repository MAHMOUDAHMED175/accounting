import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'content_screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

GlobalKey scaffoldKey = GlobalKey();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit, HomeScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          body: ContentGridViewScreens(
            // استخدام ContentGridViewScreens هنا
            child: HomeScreenCubit.get(context)
                .screen[HomeScreenCubit.get(context).currentIndex],
          ),
        );
      },
    );
  }
}
