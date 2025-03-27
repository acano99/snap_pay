import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snap_pay/src/config/router/app_router_cubit.dart';
import 'package:snap_pay/src/config/theme/app_theme_cubit.dart';
import 'package:snap_pay/src/settings/ui/settings_screen.dart';
import 'package:snap_pay_local_storage_api/snap_pay_local_storage_api.dart';
import 'package:snap_pay_repository/snap_pay_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(Blocs(sharedPreferences: sharedPreferences));
}

class Blocs extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const Blocs({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create:
              (context) =>
                  SnapPayLocalStorageApi(sharedPreferences: sharedPreferences),
        ),
        RepositoryProvider(
          create:
              (context) => SnapPayRepository(
                snapPayApi: context.read<SnapPayLocalStorageApi>(),
              ),
        ),
        BlocProvider(create: (context) => AppRouterCubit()),
        BlocProvider(
          create:
              (context) =>
                  AppThemeCubit(repository: context.read<SnapPayRepository>())
                    ..getTheme(),
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeCubit = context.watch<AppThemeCubit>().state;
    final appRouter = context.watch<AppRouterCubit>().state;

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Snap Pay',
      debugShowCheckedModeBanner: false,
      theme: appTheme(appThemeCubit),
    );
  }
}
