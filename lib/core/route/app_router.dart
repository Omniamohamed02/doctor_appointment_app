import 'package:doctor_appointment_app/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../features/login/ui/login_screen.dart' ;
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/sign_up/ui/signup_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
     
    final arguments =settings.arguments;

    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
       case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        ); 
      default:
        return null;
    }}
  }


