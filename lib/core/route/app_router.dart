import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/core/route/routes.dart';
import 'package:doctor_appointment_app/features/home/home_screen.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/sign_up/ui/signup_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: SignupScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return null;
    }
  }
}
