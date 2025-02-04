import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/features/home/presentation/views/home_view.dart';
import 'package:cine_vault/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
