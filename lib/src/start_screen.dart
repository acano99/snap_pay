import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_pay/src/config/router/app_router_cubit.dart';
import 'package:snap_pay/src/config/router/routes.dart';

class NavigationBarScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const NavigationBarScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          drawerEnableOpenDragGesture: true,
          drawer:
              orientation == Orientation.landscape
                  ? SafeArea(
                    bottom: false,
                    child: Drawer(
                      child: Column(
                        children: [
                          ListTile(
                            onTap:
                                () => context
                                    .read<AppRouterCubit>()
                                    .state
                                    .goNamed(Routes.paymenMethodHome),
                            trailing: Icon(Icons.credit_card),
                            title: Text('Payments'),
                          ),
                          ListTile(
                            onTap:
                                () => context
                                    .read<AppRouterCubit>()
                                    .state
                                    .goNamed(Routes.settings),
                            trailing: Icon(Icons.settings),
                            title: Text('Settings'),
                          ),
                        ],
                      ),
                    ),
                  )
                  : null,
          appBar: AppBar(title: const Text('Snap Pay')),
          body: navigationShell,
          bottomNavigationBar:
              orientation == Orientation.portrait
                  ? NavigationBar(
                    selectedIndex: navigationShell.currentIndex,
                    onDestinationSelected:
                        (index) => navigationShell.goBranch(index),
                    destinations: const [
                      NavigationDestination(
                        icon: Icon(Icons.credit_card),
                        label: 'Payments',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.settings),
                        label: 'Settings',
                      ),
                    ],
                  )
                  : null,
        );
      },
    );
  }
}
