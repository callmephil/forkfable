import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forkfable/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.ref);
  final WidgetRef ref;

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(path: '/', page: HomeRoute.page, initial: true),
      RedirectRoute(path: '*', redirectTo: '/'),
    ];
  }
}
