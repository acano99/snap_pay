part of 'payment_method_bloc.dart';

sealed class PaymentMethodState extends Equatable {
  const PaymentMethodState();

  @override
  List<Object> get props => [];
}

final class PaymentMethodLoading extends PaymentMethodState {}

final class PaymentMethodLoaded extends PaymentMethodState {
  final List<PaymentMethod> paymentMethods;

  const PaymentMethodLoaded({required this.paymentMethods});

  @override
  List<Object> get props => [paymentMethods];
}

final class PaymentMethodError extends PaymentMethodState {
  final String error;

  const PaymentMethodError({required this.error});
}

final class PaymentMethodEmpty extends PaymentMethodState {}

final class PaymentMethodAddEdit extends PaymentMethodState {}
