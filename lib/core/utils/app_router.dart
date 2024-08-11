import 'package:go_router/go_router.dart';
import 'package:rockets/features/home/presentation/views/home_view.dart';
import 'package:rockets/features/login/presentation/views/login_view.dart';
import 'package:rockets/features/register/presentation/views/register_view.dart';
import 'package:rockets/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLogin = '/login';
  static const kRegisterView = '/registerView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
