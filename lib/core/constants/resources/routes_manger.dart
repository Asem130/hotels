import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hotels/screens/views/chose_language.dart';
import 'package:hotels/screens/views/login_view.dart';
import 'package:hotels/screens/views/register_view.dart';
import 'package:hotels/screens/views/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";

  static const String choseLanguage = "/choseLanguage";
}

List<GetPage<dynamic>>? routes = [
  GetPage(name: Routes.splashRoute, page: () => const SplashView()),
  GetPage(name: Routes.registerRoute, page: () => const RegisterView()),
  GetPage(name: Routes.choseLanguage, page: () => const ChoseLanguage()),
  GetPage(name: Routes.loginRoute, page: () => const LoginView()),
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
