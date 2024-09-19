import 'package:flutter/material.dart';
import 'package:sales_mvvm/presentation/forget_password/forget_password_view.dart';
import 'package:sales_mvvm/presentation/login/login_view.dart';
import 'package:sales_mvvm/presentation/main/main_view.dart';
import 'package:sales_mvvm/presentation/onboarding/view/onboarding_view.dart';
import 'package:sales_mvvm/presentation/register/register_view.dart';
import 'package:sales_mvvm/presentation/resources/strings_manager.dart';
import 'package:sales_mvvm/presentation/splash/spalsh_view.dart';
import 'package:sales_mvvm/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String onBoardingRoute = "/onBoarding";
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return undefinedRoute();
    }
  }

  static Route undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
             AppStrings.noRoutesFound
            ),
          ),
          body: const Center(
            child: Text(
              AppStrings.noRoutesFound,
            ),
          ),
        );
      },
    );
  }
}
