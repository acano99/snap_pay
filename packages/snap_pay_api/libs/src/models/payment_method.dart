import 'package:equatable/equatable.dart';

class PaymentMethod extends Equatable {
  final String name;
  final String description;

  const PaymentMethod({required this.name, required this.description});

  PaymentMethod copyWith({
    String? name,
    String? description,
  }) =>
      PaymentMethod(
        name: name ?? this.name,
        description: description ?? this.description,
      );

  @override
  List<Object?> get props => [name, description];
}
