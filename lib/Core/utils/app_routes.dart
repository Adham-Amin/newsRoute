import 'package:go_router/go_router.dart';
import 'package:news_route/Features/home/presentation/views/home_view.dart';
import 'package:news_route/Features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const String home = '/home';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}