import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_pay/src/payment_methods/ui/home/payment_method_home_screen.dart';
import 'package:snap_pay/src/settings/ui/settings_screen.dart';
import 'package:snap_pay/src/start_screen.dart';
import 'routes.dart';

final _goRouter = GoRouter(
  initialLocation: Routes.paymenMethodHome,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationBarScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.paymenMethodHome,
              name: Routes.paymenMethodHome,
              builder: (context, state) => const PaymentMethodHomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.settings,
              name: Routes.settings,
              builder: (context, state) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class AppRouterCubit extends Cubit<GoRouter> {
  AppRouterCubit() : super(_goRouter);
}
