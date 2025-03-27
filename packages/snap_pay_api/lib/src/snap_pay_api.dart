import 'models/payment_method.dart';

abstract class SnapPayApi {
  Future<List<PaymentMethod>> getPaymentMethods();

  Future<void> savePaymentMethod(PaymentMethod paymentMethod);

  Future<void> deletePaymentMethod(PaymentMethod paymentMethod);

  Future<void> updatePaymentMethod(PaymentMethod paymentMethod);

  Future<bool> isDarkTheme();

  Future<void> setDarkTheme(bool isDarkTheme);
}
