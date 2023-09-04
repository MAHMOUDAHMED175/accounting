import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeScreenCubit()),
      ],
      child: MaterialApp(
        title: 'Accounting',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'), // اتجاه من اليسار إلى اليمين (LTR)
          Locale('ar', 'SA'), // اتجاه من اليمين إلى اليسار (RTL)
        ],
        locale: const Locale('ar', 'SA'),
        // اختر اللغة والدولة المناسبة
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.grey200),
          useMaterial3: true,
        ),

       home: HomeScreen(),
       //  onGenerateRoute: RouteGenerator.getRoute,
        // onGenerateInitialRoutes: (navigator) => [
        //   MaterialPageRoute(builder: (context) => HomeScreen()),
        // ],
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
