import 'package:shared_preferences/shared_preferences.dart';
import 'package:snap_pay_api/snap_pay_api.dart';

class SnapPayLocalStorageApi extends SnapPayApi {
  final SharedPreferences _sharedPreferences;

  SnapPayLocalStorageApi({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  @override
  Future<void> deletePaymentMethod(PaymentMethod paymentMethod) {
    // TODO: implement deletePaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<List<PaymentMethod>> getPaymentMethods() {
    // TODO: implement getPaymentMethods
    throw UnimplementedError();
  }

  @override
  Future<void> savePaymentMethod(PaymentMethod paymentMethod) {
    // TODO: implement savePaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<void> updatePaymentMethod(PaymentMethod paymentMethod) {
    // TODO: implement updatePaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<bool> isDarkTheme() async =>
      _sharedPreferences.getBool('isDarkTheme') ?? false;

  @override
  Future<void> setDarkTheme(bool isDarkTheme) async =>
      _sharedPreferences.setBool('isDarkTheme', isDarkTheme);
}
