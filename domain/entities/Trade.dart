class Trade {
  final int id;
  final int buyOrderId;
  final int sellOrderId;
  final double price;
  final int quantity;
  final DateTime executedAt;

  Trade({
    required this.id,
    required this.buyOrderId,
    required this.sellOrderId,
    required this.price,
    required this.quantity,
    required this.executedAt,
  });

  Trade copyWith({
    int? id,
    int? buyOrderId,
    int? sellOrderId,
    double? price,
    int? quantity,
    DateTime? executedAt,
  }) {
    return Trade(
      id: id ?? this.id,
      buyOrderId: buyOrderId ?? this.buyOrderId,
      sellOrderId: sellOrderId ?? this.sellOrderId,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      executedAt: executedAt ?? this.executedAt,
    );
  }
}