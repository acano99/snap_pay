part of 'payment_method_bloc.dart';

sealed class PaymentMethodEvent extends Equatable {
  const PaymentMethodEvent();

  @override
  List<Object> get props => [];
}

final class GetPaymentMethod extends PaymentMethodEvent {}

final class SavePaymentMethod extends PaymentMethodEvent {
  final PaymentMethod paymentMethod;

  const SavePaymentMethod({required this.paymentMethod});
}

final class DeletePaymentMethod extends PaymentMethodEvent {
  final PaymentMethod paymentMethod;

  const DeletePaymentMethod({required this.paymentMethod});
}
