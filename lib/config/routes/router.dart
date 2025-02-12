import 'package:cine_vault/config/routes/routes.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/views/code_verification_view.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/views/created_new_password_view.dart';
import 'package:cine_vault/features/authentication/forget_password/presentation/views/find_your_account.dart';
import 'package:cine_vault/features/authentication/login/presentation/views/login_view.dart';
import 'package:cine_vault/features/authentication/register/presentation/views/register_view.dart';
import 'package:cine_vault/features/home/presentation/views/home_view.dart';
import 'package:cine_vault/features/home/presentation/views/watch_list_view.dart';
import 'package:cine_vault/features/onBoarding/presentation/views/onboarding_view.dart';
import 'package:cine_vault/features/profile/presentation/views/profile_view.dart';
import 'package:cine_vault/features/search/presentation/views/search_view.dart';
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
        path: AppRoutes.onBoarding,
        builder: (context, state) {
          return const OnboardingView();
        },
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: AppRoutes.findYourAccount,
        builder: (context, state) {
          return const FindYourAccountView();
        },
      ),
      GoRoute(
        path: AppRoutes.createdNewPassword,
        builder: (context, state) {
          return const CreatedNewPasswordView();
        },
      ),
      GoRoute(
        path: AppRoutes.codeVerification,
        builder: (context, state) {
          return const CodeVerificationView();
        },
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: AppRoutes.watchList,
        builder: (context, state) {
          return const WatchListView();
        },
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) {
          return const ProfileView();
        },
      ),
      GoRoute(
        path: AppRoutes.search,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
