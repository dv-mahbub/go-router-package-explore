import 'package:go_router/go_router.dart';
import 'package:go_router_package/homepage.dart';
import 'package:go_router_package/location.dart';
import 'package:go_router_package/profile.dart';
import 'package:go_router_package/settings.dart';
import 'package:go_router_package/splash_screen.dart';
import 'package:go_router_package/user.dart';
import 'package:go_router_package/visited_places.dart';

class Routes {
  static const String splash = '/';
  static const String homepage = '/homepage';
  static const String settings = '/settings';
  static const String profile = '/profile';
  static const String user = '/user/:userId';
  static const String location = '/location';
  static const String visitedPlaces = '/visitedPlace';

  static final router = GoRouter(
    // initialLocation: splash,
    // initialLocation: '/user/15',
    // initialLocation: '$location?location=Naogaon',
    initialLocation: '/location/visitedPlace?location=Hapania&locationId=9',
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
      GoRoute(
        path: user,
        builder: (context, state) => User(
          userId: int.parse(state.pathParameters['userId']!),
        ),
      ),
      GoRoute(
        path: location,
        builder: (context, state) => Location(
          locationName: state.uri.queryParameters['location']!,
        ),
        routes: [
          GoRoute(
            path: visitedPlaces,
            builder: (context, state) => VisitedPlaces(
              areaId: state.uri.queryParameters['locationId']!,
            ),
          ),
        ],
      ),
    ],
  );
}
