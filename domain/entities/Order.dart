import 'enums/OrderStatus.dart';
import 'enums/OrderType.dart';

class Order {
  final int id;
  final int traderId;
  final OrderType type; 
  final double price;
  final int quantity;
  final int remainingQuantity;
  final OrderStatus status;
  final DateTime createdAt;

  Order({
    required this.id,
    required this.traderId,
    required this.type,
    required this.price,
    required this.quantity,
    required this.remainingQuantity,
    required this.status,
    required this.createdAt,
  });

  Order copyWith({
    int? id,
    int? traderId,
    OrderType? type,
    double? price,
    int? quantity,
    int? remainingQuantity,
    OrderStatus? status,
    DateTime? createdAt,
  }) {
    return Order(
      id: id ?? this.id,
      traderId: traderId ?? this.traderId,
      type: type ?? this.type,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      remainingQuantity: remainingQuantity ?? this.remainingQuantity,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}