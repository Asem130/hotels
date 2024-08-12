import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hotels/screens/views/auth/confirm_email.dart';
import 'package:hotels/screens/views/chose_language.dart';
import 'package:hotels/screens/views/auth/login_view.dart';
import 'package:hotels/screens/views/home_view.dart';
import 'package:hotels/screens/views/register_view.dart';
import 'package:hotels/screens/views/splash_view.dart';
import 'package:hotels/screens/widgets/auth/no_internet_connection.dart';

class Routes {
  static const String splashRoute = "/";
  static const String looginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String homeRoute = "/HomeView";
  static const String confirmEmail = "/confirmEmail";

  static const String choseLanguage = "/choseLanguage";
  static const String noInternetConection = "/noInternetConection";
}

List<GetPage<dynamic>>? routes = [
  GetPage(name: Routes.splashRoute, page: () => const SplashView()),
  GetPage(
      name: Routes.noInternetConection,
      page: () => const NoInternetConection()),
  GetPage(name: Routes.confirmEmail, page: () => const ConfirmEmailView()),
  GetPage(name: Routes.registerRoute, page: () => const RegisterView()),
  GetPage(name: Routes.choseLanguage, page: () => const ChoseLanguage()),
  GetPage(name: Routes.looginRoute, page: () => const LoginView()),
  GetPage(name: Routes.homeRoute, page: () => const HomeView()),
];

/*
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
         initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('AppStrings.noRouteFound.tr()'),
              ),
              body: const Center(child: Text('AppStrings.noRouteFound.tr()')),
            ));
  }
}*/
