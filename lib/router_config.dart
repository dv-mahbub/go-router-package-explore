import 'package:go_router/go_router.dart';
import 'package:go_router_package/homepage.dart';
import 'package:go_router_package/profile.dart';
import 'package:go_router_package/settings.dart';
import 'package:go_router_package/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String homepage = '/homepage';
  static const String settings = '/settings';
  static const String profile = '/profle';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: homepage,
        builder: (context, state) => Homepage(),
      ),
      GoRoute(
        path: settings,
        builder: (context, state) => Settings(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => Profile(),
      ),
    ],
  );
}
