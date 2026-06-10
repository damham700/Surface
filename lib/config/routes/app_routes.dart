import 'package:go_router/go_router.dart';
import 'route_names.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: RouteNames.login,
        name: RouteNames.login,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: RouteNames.home,
        name: RouteNames.home,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: RouteNames.subscriptionPlans,
        name: RouteNames.subscriptionPlans,
        builder: (context, state) => const SizedBox(),
      ),
      GoRoute(
        path: RouteNames.payment,
        name: RouteNames.payment,
        builder: (context, state) => const SizedBox(),
      ),
    ],
    errorBuilder: (context, state) => const SizedBox(),
  );
}
