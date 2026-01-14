class Trader {
  final int id;
  final String name;
  final double balance;
  final DateTime createdAt;

  Trader({
    required this.id,
    required this.name,
    required this.balance,
    required this.createdAt,
  });

  Trader copyWith({
    int? id,
    String? name,
    double? balance,
    DateTime? createdAt,
  }) {
    return Trader(
      id: id ?? this.id,
      name: name ?? this.name,
      balance: balance ?? this.balance,
      createdAt: createdAt ?? this.createdAt,
    );
  }

}