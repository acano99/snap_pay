import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_pay/src/config/theme/app_theme_cubit.dart';
import 'package:snap_pay/src/settings/ui/settings_screen.dart';

void main() {
  runApp(const Blocs());
}

class Blocs extends StatelessWidget {
  const Blocs({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AppThemeCubit())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeCubit = context.watch<AppThemeCubit>().state;

    return MaterialApp(
      title: 'Snap Pay',
      debugShowCheckedModeBanner: false,
      theme: appTheme(appThemeCubit),
      home: const SettingsScreen(),
    );
  }
}
