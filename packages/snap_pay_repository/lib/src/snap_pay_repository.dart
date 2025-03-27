import 'package:snap_pay_api/snap_pay_api.dart';

class SnapPayRepository {
  final SnapPayApi _snapPayApi;

  SnapPayRepository({required SnapPayApi snapPayApi})
      : _snapPayApi = snapPayApi;

  Future<bool> get isDarkTheme async => _snapPayApi.isDarkTheme();

  Future<bool> setTheme(bool isDarkTheme) async {
    await _snapPayApi.setDarkTheme(isDarkTheme);
    return isDarkTheme;
  }
}
