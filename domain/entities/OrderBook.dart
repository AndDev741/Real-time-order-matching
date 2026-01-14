import 'dart:core';

import 'Order.dart';

class OrderBook {
  final Symbol symbol;
  final List<Order> buyOrders; //sorted by price descending
  final List<Order> sellOrders; //sorted by price ascending

  OrderBook({
    required this.symbol,
    required this.buyOrders,
    required this.sellOrders,
  });

  OrderBook copyWith({
    Symbol? symbol,
    List<Order>? buyOrders,
    List<Order>? sellOrders,
  }) {
    return OrderBook(
      symbol: symbol ?? this.symbol,
      buyOrders: buyOrders ?? this.buyOrders,
      sellOrders: sellOrders ?? this.sellOrders,
    );
  }

  List<Order> getBuyOrders() {
    return buyOrders..sort((Order b1, Order b2) => b2.price.compareTo(b1.price));
  }
  List<Order> getSellOrders() {
    return sellOrders..sort((Order s1, Order s2) => s1.price.compareTo(s2.price));
  }
}