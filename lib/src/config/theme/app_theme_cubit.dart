import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:snap_pay_repository/snap_pay_repository.dart';

ThemeData appTheme(bool isDarkMode) => ThemeData(
  colorSchemeSeed: Colors.greenAccent,
  brightness: isDarkMode ? Brightness.dark : Brightness.light,
);

class AppThemeCubit extends Cubit<bool> {
  final bool isDarkMode;
  final SnapPayRepository _repository;

  AppThemeCubit({
    this.isDarkMode = true,
    required final SnapPayRepository repository,
  }) : _repository = repository,
       super(isDarkMode);

  Future<void> getTheme() async {
    final bool isDarkTheme = await _repository.isDarkTheme;
    await setTheme(isDarkTheme);
    emit(isDarkTheme);
  }

  Future<void> setTheme(bool isDarkTheme) async =>
      await _repository.setTheme(isDarkTheme);

  Future<void> toggleTheme() async {
    await setTheme(!state);
    emit(!state);
  }
}
