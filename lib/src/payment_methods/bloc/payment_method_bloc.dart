import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:snap_pay_api/snap_pay_api.dart';

part 'payment_method_event.dart';
part 'payment_method_state.dart';

class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  PaymentMethodBloc() : super(PaymentMethodLoading()) {
    on<GetPaymentMethod>(_getPaymentMethod);
    on<SavePaymentMethod>(_savePaymentMethod);
    on<DeletePaymentMethod>(_deletePaymentMethod);
  }

  Future<void> _getPaymentMethod(
    GetPaymentMethod event,
    Emitter<PaymentMethodState> emit,
  ) async {}

  Future<void> _savePaymentMethod(
    SavePaymentMethod event,
    Emitter<PaymentMethodState> emit,
  ) async {}

  Future<void> _deletePaymentMethod(
    DeletePaymentMethod event,
    Emitter<PaymentMethodState> emit,
  ) async {}
}
