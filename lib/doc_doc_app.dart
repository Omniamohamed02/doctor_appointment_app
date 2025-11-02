import 'package:doctor_appointment_app/core/route/app_router.dart';
import 'package:doctor_appointment_app/core/themes/colors_manager.dart';
import 'package:doctor_appointment_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/route/routes.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         theme: ThemeData(
          primaryColor: ColorsManager.primaryBlueColor,
          scaffoldBackgroundColor: Colors.white,
         ),
         initialRoute: Routes.onboarding,
       onGenerateRoute: AppRouter().onGenerateRoute,
        ),
    );
}}