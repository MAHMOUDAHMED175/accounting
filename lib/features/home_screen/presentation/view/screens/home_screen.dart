import 'package:accounting/core/utils/responsive.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/content_screens.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/header_home_screen_widgets/header_home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view/widgets/side_menu_widgets/side_menu.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit, HomeScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body:

             Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    if (HomeScreenCubit.get(context).openSide)
                      sideMenu(context),
                  Expanded(
                    child: Column(
                      children: [
                        const HeaderHomeScreen(),
                        Expanded(
                            child: ContentGridViewScreens(
                          child: HomeScreenCubit.get(context).screen[
                              HomeScreenCubit.get(context).currentIndex],
                        )),
                      ],
                    ),
                  ),
                ],
             ),
        );
      },
    );
  }
}
