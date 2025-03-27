import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(bool isDarkMode) => ThemeData(
  colorSchemeSeed: Colors.greenAccent,
  brightness: isDarkMode ? Brightness.dark : Brightness.light,
);

class AppThemeCubit extends Cubit<bool> {
  final bool isDarkMode;

  AppThemeCubit({this.isDarkMode = false}) : super(isDarkMode);

  void toggleTheme() => emit(!state);
}
